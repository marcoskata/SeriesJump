class FollowingsController < ApplicationController
   def create  
    @user = User.find(params[:user_id])  
    @following = @user.followings.create!(params[:following])  
    redirect_to "/following", :notice => "Follow created!"    
  end 
  
  def show
    @following = Following.find(params[:id])
  end
  
  def index
    @following = Following.all
  end
  
  def destroy
    @idu = current_user.followings.where(idu: params[:id] )[0].idu
    @user = User.find(@idu)
    puts "llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllalala"
    puts @user.name
    @nombre = current_user.followings.where(idu: params[:id] )[0].name
    current_user.followings.where(idu: params[:id]).delete
    @user.followers.where(idu: current_user.id).delete
    
    respond_to do |format|
      format.html { redirect_to "/following", :notice => "You don't follow to #{@nombre} now" }
      format.json { head :no_content }
    end
  end
end