class CreateRickAndMortyCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :rick_and_morty_characters do |t|
      t.string :name
      t.string :status
      t.string :species
      t.string :type
      t.string :image

      t.timestamps
    end
  end
end
