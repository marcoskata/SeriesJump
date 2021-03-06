class Link
  include Mongoid::Document
  field :id, type: String
  field :url, type: String
  field :idioma, type: String
  field :online, type: Boolean
  field :servidor, type: String
  embedded_in :pelicula, :inverse_of => :links
end
