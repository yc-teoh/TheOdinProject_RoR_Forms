class User < ApplicationRecord

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  validates :username, length: {minimum: 4, maximum: 12}
  validates :password, length: {minimum: 6, maximum: 16}

end
