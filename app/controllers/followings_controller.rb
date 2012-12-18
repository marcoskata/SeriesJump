class FollowingsController < ApplicationController
   def create  
    @user = User.find(params[:user_id])  
    @following = @user.followings.create!(params[:following])  
    redirect_to @user, :notice => "Follow created!"    
  end 
end
