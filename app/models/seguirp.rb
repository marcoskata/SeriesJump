class Seguirp
  include Mongoid::Document
  field :idp, type: String
  field :name, type: String
  embedded_in :user, :inverse_of => :seguirps
end
