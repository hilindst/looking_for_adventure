class Adventure < ApplicationRecord
  belongs_to :player
  has_many :characters, through: :adventure_characters


  validates :title, :ruleset, :description, :status, :adventure_type, :setting, presence: true
end
