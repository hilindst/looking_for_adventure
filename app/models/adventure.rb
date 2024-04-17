class Adventure < ApplicationRecord
  belongs_to :player
  has_many :characters, through: :adventure_characters
  has_one_attached :image

  validates :title, :ruleset, :description, :status, :adventure_type, :setting, presence: true

end
