class Character < ApplicationRecord
  belongs_to :player
  has_many :adventures, through: :adventure_characters

  validates :name, :race, :char_class, :alignment, :level, presence: true

end
