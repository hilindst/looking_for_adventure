class Character < ApplicationRecord
  belongs_to :player
  has_many :adventures
end
