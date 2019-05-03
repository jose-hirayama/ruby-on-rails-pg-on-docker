class TaskToLabel < ApplicationRecord
    validates :task_id,
        presence: true

    validates :label_id,
        presence: true
    
end
