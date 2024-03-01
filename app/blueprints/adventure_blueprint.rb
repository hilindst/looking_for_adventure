# frozen_string_literal: true

class AdventureBlueprint < Blueprinter::Base
  
  identifier :id

  fields :title, :ruleset, :description, :status, :adventure_type, :setting

  view :normal do
    
    association :player, blueprint: PlayerBlueprint, view: :normal
  end
end

end
