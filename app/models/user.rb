class User < ApplicationRecord

  # has_secure_password

  before_validation :email_to_lower

  validates :email, uniqueness: true
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { minimum: 8 }

  def email_to_lower
    return if !email
    email.downcase!
  end

  def self.authenticate_with_credentials(email, password)
    if @user = User.find_by_email(email.downcase.strip)
      @user.authenticate(password)
    end
  end
end
