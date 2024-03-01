# frozen_string_literal: true

class PlayerBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :username, :email, :profile
  end

  view :characters do 
    association :characters, blueprint: CharacterBlueprint
  end

  view :adventures do 
    association :adventures, blueprint: AdventureBlueprint
  end
end
