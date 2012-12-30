class Seguir
  include Mongoid::Document
  field :idu, type: String
  field :name, type: String
  embedded_in :user, :inverse_of => :seguirs
end
