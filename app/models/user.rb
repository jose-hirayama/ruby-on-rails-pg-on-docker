class User < ActiveRecord::Base
    before_validation :before_validations

    validates :name,
        presence: true,
        length: { minimum: 1, maximum: 200}

    validates :mail_address,
        presence: true,
        :email_format => { :message => 'mailアドレスとして正しくありません' }
    
    private
    def before_validations
        name.strip!
        mail_address.strip!
    end
end
