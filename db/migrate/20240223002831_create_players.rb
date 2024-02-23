class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :username
      t.string :password
      t.string :email
      t.text :profile

      t.timestamps
    end
  end
end
