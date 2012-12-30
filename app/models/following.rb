class Following
  include Mongoid::Document
  field :id, type: String
  field :name, type: String
  embedded_in :user, :inverse_of => :followings  
end
