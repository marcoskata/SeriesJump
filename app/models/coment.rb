class Coment
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  embedded_in :series, :inverse_of => :coments
end
