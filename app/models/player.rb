class Player < ApplicationRecord
  has_many :adventures
  has_many :characters

  validates :username, :email, presence: true
end
