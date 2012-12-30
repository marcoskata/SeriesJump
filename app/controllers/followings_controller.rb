class FollowingsController < ApplicationController
   def create  
    @user = User.find(params[:user_id])  
    @following = @user.followings.create!(params[:following])  
    redirect_to @user, :notice => "Follow created!"    
  end 
  
  def show
    @following = Following.find(params[:id])
  end
  
  def index
    @following = Following.all
  end
  
  def destroy
    current_user.followings.where(idu: params[:id] ).delete
    
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end