class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, :null => false
      t.string :details
      t.integer :priority, :null => false, :default => 0
      t.integer :status, :null => false, :default => 0
      t.datetime :deadline
      t.references :registered_user, :null => false
      t.timestamp :registered_at, :null => false

      t.timestamps
    end

    add_foreign_key :tasks, :users, column: :registered_user_id
  end
end
