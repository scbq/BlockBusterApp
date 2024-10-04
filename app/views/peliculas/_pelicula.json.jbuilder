json.extract! pelicula, :id, :title, :genre, :year, :cliente_id, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)
