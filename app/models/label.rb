class Label < ApplicationRecord
    before_validation :before_validations

    validates :name,
        presence: true,
        length: { minimum: 1, maximum: 200}
    
    private
    def before_validations
        name.strip!
    end

end
