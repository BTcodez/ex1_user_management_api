class User < ApplicationRecord
    before_create :downcase_email

    validates :full_name, presence: true, uniqueness: true, length: {minimum: 3, maximum: 50}
    validates :email, presence: true, uniqueness: true, length: {minimum: 5, maximum: 255}, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :age, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 100}
    
    def downcase_email
        self.email = email.downcase if email.present?
    end
end
