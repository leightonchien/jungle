class User < ActiveRecord::Base
    has_secure_password
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, presence: true
    validates :email, presence: true, uniqueness: { case_sensistive: false }
    validates :password_confirmation, presence: true
  end 