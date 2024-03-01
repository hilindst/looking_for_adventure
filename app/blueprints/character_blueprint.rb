# frozen_string_literal: true

class CharacterBlueprint < Blueprinter::Base

  identifier :id

  fields :name, :race, :char_class, :alignment, :level, :background, :gender, :bio

  view :normal do
    
    association :player, blueprint: PlayerBlueprint, view: :normal
  end
end
