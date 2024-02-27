class CreateAdventures < ActiveRecord::Migration[7.1]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :ruleset
      t.text :description
      t.boolean :status
      t.string :adventure_type
      t.string :setting
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
