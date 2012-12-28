class SeguirpsController < ApplicationController
 def create  
    @user = User.find(params[:user_id])  
    @seguirp = @user.seguirps.create!(params[:seguirp])  
    redirect_to @user, :notice => "Pelicula Seguida!!"    
  end
  
  def show
    @seguirp = Seguirp.find(params[:idp])
  end
  
  def index
    @seguirps = Seguirp.all
  end
  
end
