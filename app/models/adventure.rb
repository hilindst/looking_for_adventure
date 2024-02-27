class Adventure < ApplicationRecord
  belongs_to :player
  has_many :characters

  validates :title, :ruleset, :description, :status, :adventure_type, :setting, presence: true
end
