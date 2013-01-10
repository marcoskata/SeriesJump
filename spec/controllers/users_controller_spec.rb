require 'spec_helper'

describe UsersController do

  #describe "GET 'show'" do
     #before(:each) do
        #@user = FactoryGirl.create(:user)
      #  @user= @user.new(name= "example user")
     #end
   
     it "should the right fields" do
        respond_to(:provider) 
        respond_to(:uid)
        respond_to(:name)
        respond_to(:email)
        respond_to(:admin)
        respond_to(:foto)
        respond_to(:comentarios)
        #should have_field(:name)
        #get :show, :id => @user 
     end

   #end
end

