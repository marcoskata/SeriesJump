class Series
  include Mongoid::Document
  field :id, type: String
  field :nombre, type: String
  field :sinopsis, type: String
  field :director, type: String
  field :guionista, type: String
  field :productores, type: String
  field :caratula, type: String
  validates_presence_of :nombre, :id
  embeds_many :capitulos
  embeds_many :coments 
end
