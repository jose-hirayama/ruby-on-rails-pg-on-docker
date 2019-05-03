class CreateTaskToLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :task_to_labels do |t|
      t.references :task, :null => false
      t.references :label, :null => false

      t.timestamps
    end

    add_foreign_key :task_to_labels, :tasks, on_delete: :cascade
    add_foreign_key :task_to_labels, :labels, on_delete: :cascade
  end
end
