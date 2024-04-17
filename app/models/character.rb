class Character < ApplicationRecord
  belongs_to :player
  has_many :adventures, through: :adventure_characters
  has_one_attached :image

  validates :name, :race, :char_class, :alignment, :level, presence: true

end
