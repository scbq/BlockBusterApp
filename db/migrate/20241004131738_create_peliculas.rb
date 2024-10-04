class CreatePeliculas < ActiveRecord::Migration[7.2]
  def change
    create_table :peliculas do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
