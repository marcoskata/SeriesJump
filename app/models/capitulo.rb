class Capitulo
  include Mongoid::Document
  field :temporada, type: Integer
  field :cap, type: Integer
  field :titulo, type: String
  field :link, type: String
  embedded_in :serie, :inverse_of => :capitulos
end
