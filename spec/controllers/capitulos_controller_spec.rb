require 'spec_helper'

describe CapitulosController do

   it "should the right fields" do
        respond_to(:temporada)
        respond_to(:cap)
        respond_to(:titulo)
        respond_to(:link)
        #should have_field(:name)
        #get :show, :id => @user 
     end

end
