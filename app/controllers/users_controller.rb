class UsersController < ApplicationController
  before_filter :authenticate_user!

  before_filter :admin_user,     only: :destroy

  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
     @user = User.find(params[:id])
     if @user.update_attributes(params[:user])
     redirect_to @user
     else
        render :edit
     end
   end
   
    def index
    @users = User.all
  end
   
   def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
  
  
  
  private
  
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end


