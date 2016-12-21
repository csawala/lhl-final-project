class User < ApplicationRecord

  has_one :organization

  has_secure_password

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

  def self.create_with_omitauth(auth)
    byebug
    user = find_or_create_by(uid: auth['uid'], provider: auth['provider'])
    user.email = "#{auth['uid']}@#{auth['provider']}.com"
    user.password = auth['uid']
    user.first_name = auth['info']['first_name']
    user.last_name = auth['info']['last_name']

    if User.exists?(user)
      user
    else
      user.save!
      user
    end
  end

  def self.authenticate_with_credentials(email, password)
    if @user = User.find_by_email(email.downcase.strip)
      @user.authenticate(password)
    end
  end
end
