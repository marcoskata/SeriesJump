class User
  include Mongoid::Document
  field :provider, type: String
  field :uid, type: String
  field :name, type: String
  field :email, type: String
  field :peliculas, type: Array
  field :series, type: Array
  field :foto, type: Object
  field :comentarios, type: String
  field :admin, type: Boolean, default: false
  attr_protected :provider, :uid, :name, :email, :admin
  embeds_many :followings
  embeds_many :followers
  embeds_many :seguirps
  embeds_many :seguirs
  def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth['provider']
    user.uid = auth['uid']
    if auth['info']
       user.name = auth['info']['name'] || ""
       user.email = auth['info']['email'] || ""
    end
  end
end
end
