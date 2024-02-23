class Player < ApplicationRecord
  has_many :adventures
  has_many :characters

  validates :username, :password, :email, presence: true
end
