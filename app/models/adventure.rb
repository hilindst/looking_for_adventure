class Adventure < ApplicationRecord
  belongs_to :player
  has_many :characters

  validates :title, :ruleset, :description, :status, :type, :setting, presence: true
end
