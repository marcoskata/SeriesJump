class Following
  include Mongoid::Document
  field :name, type: String
  validates_uniqueness_of :name, :message => 'has already been taken'
  embedded_in :user, :inverse_of => :followings  
end
