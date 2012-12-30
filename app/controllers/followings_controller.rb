class FollowingsController < ApplicationController
   def create  
    @user = User.find(params[:user_id])  
    @following = @user.followings.create!(params[:following])  
    redirect_to @user, :notice => "Follow created!"    
  end 
  
   def show
    @following = Following.find(params[:idu])
  end
  
  def index
    @following = Following.all
  end
  
end
