class Task < ApplicationRecord
    validates :title,
        presence: true,
        length: { minimum: 1, maximum: 200}

    validates :details,
        allow_blank: true,
        length: {minimum: 0, maximum: 2000}

    validates :priority, :status,
        presence: true,
        numericality: {only_integer: true}

    validates :deadline,
        allow_blank: true,
        date_time: true
    
    validate :date_cannot_be_in_the_past

    def date_cannot_be_in_the_past
        if deadline.present? && deadline < Date.today
            errors.add(:deadline, ": 過去の日付は使用できません")
        end
    end

end
