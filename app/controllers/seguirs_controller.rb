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
  
    def destroy
    @serie = current_user.seguirs.where(idp: params[:id] )[0].name
    current_user.seguirs.where(idp: params[:id]).delete
    respond_to do |format|
      format.html { redirect_to "/series", :notice => "You don't favorite to #{@serie} now" }
      format.json { head :no_content }
    end
  end
end
