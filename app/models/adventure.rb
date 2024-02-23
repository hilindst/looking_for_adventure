class Adventure < ApplicationRecord
  belongs_to :player
  has_many :characters
end
