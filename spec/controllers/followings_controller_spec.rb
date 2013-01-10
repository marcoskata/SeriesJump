require 'spec_helper'

describe FollowingsController do
   it "should the right fields" do
      respond_to(:idu)
      respond_to(:name)
        #should have_field(:name)
        #get :show, :id => @user 
   end

end
