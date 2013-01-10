class SeguirpsController < ApplicationController
 def create  
    @user = User.find(params[:user_id])  
    @seguirp = @user.seguirps.create!(params[:seguirp])  
    redirect_to :action => 'index'
  end
  
  def show
    @seguirp = Seguirp.find(params[:idp])
  end
  
  def index
    #@seguirps = Seguirp.all
    @seguirps = Seguirp.paginate(:page => params[:page], :per_page => 5)
  end
  
  def destroy
    @pelicula = current_user.seguirps.where(idp: params[:id] )[0].name
    current_user.seguirps.where(idp: params[:id]).delete
    respond_to do |format|
      format.html { redirect_to "/peliculas", :notice => "You don't favorite to #{@pelicula} now" }
      format.json { head :no_content }
    end
  end
  
end
