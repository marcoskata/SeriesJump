class SeguirsController < ApplicationController

 def create  
    @user = User.find(params[:user_id])  
    @seguir = @user.seguirs.create!(params[:seguir])  
    redirect_to :action => 'index'
  end
  
   def show
    @seguir = Seguir.find(params[:idp])
  end
  
  def index
    @seguirs = Seguir.all
  end
end
