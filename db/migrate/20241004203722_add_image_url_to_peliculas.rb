class AddImageUrlToPeliculas < ActiveRecord::Migration[7.2]
  def change
    add_column :peliculas, :image_url, :string
  end
end
