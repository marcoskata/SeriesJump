class Comment
  include Mongoid::Document
  field :name, type: String
  field :content, type: String
  embedded_in :pelicula, :inverse_of => :comments  
end
