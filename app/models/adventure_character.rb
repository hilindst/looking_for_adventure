class AdventureCharacter < ApplicationRecord
  belongs_to :adventure
  belongs_to :character
end
