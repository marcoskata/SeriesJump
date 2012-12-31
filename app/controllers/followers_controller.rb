class FollowersController < ApplicationController
   def create  
    @user = User.find(params[:user_id])  
    @follower = @user.followers.create!(params[:follower])  
    redirect_to "/following", :notice => "Follow created!"    
  end 
  
  def show
    @follower = Follower.find(params[:id])
  end
  
  def index
    @follower = Follower.all
  end
  
  def destroy
    @nombre = current_user.followers.where(idu: params[:id] )[0].name
    current_user.followers.where(idu: params[:id]).delete
    respond_to do |format|
      format.html { redirect_to "/following", :notice => "You don't follow to #{@nombre} now" }
      format.json { head :no_content }
    end
  end
end
