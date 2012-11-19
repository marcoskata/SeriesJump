class Pelicula
  include Mongoid::Document
  field :id, type: String
  field :nombre, type: String
  field :sinopsis, type: String
  field :saga, type: String
  field :trailers, type: String
  field :fecha, type: Date
  field :comentarios, type: String
  field :etiquetas, type: String
  field :director, type: String
  field :guionista, type: String
  field :productores, type: String
end
