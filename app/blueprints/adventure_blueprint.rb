# frozen_string_literal: true

class AdventureBlueprint < Blueprinter::Base
  
  identifier :id

  fields :title, :ruleset, :description, :status, :adventure_type, :setting, :created_at

  view :normal do
    
    association :player, blueprint: PlayerBlueprint, view: :normal
  end


end
