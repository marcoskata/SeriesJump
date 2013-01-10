require 'spec_helper'

describe LinksController do
   it "should the right fields" do
        respond_to(:id)
        respond_to(:url)
        respond_to(:idioma)
        respond_to(:online)
        respond_to(:servidor)
        #should have_field(:name)
        #get :show, :id => @user 
     end

end
