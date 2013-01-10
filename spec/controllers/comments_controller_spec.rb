require 'spec_helper'

describe CommentsController do

   it "should the right fields" do
        respond_to(:name)
        respond_to(:content)
        #should have_field(:name)
        #get :show, :id => @user 
     end


end
