class Account < ApplicationRecord
  EMAIL_FORMAT = URI::MailTo::EMAIL_REGEXP

  validates :firstname, presence: true, length: { maximum: 100 }
  validates :lastname,  presence: true, length: { maximum: 100 }
  validates :email,
            presence: true,
            length: { maximum: 254 },
            format: { with: EMAIL_FORMAT },
            uniqueness: { case_sensitive: false }
end
