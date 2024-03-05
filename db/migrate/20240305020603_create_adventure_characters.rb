class CreateAdventureCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :adventure_characters do |t|
      t.references :adventure, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
