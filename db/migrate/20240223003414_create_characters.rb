class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :char_class
      t.string :alignment
      t.integer :level
      t.string :background
      t.string :gender
      t.text :bio
      t.belongs_to :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
