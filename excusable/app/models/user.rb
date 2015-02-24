class User < ActiveRecord::Base
  has_secure_password
  has_many :excuses, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
