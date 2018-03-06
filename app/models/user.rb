class User < ActiveRecord::Base

  has_many :reviews
  has_secure_password

  def self.authenticate_with_credentials(email, password)
    parsed = email.downcase.strip
    @user = User.find_by_email(parsed)
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end

  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }
  
end
