require 'spec_helper'

describe SeguirpsController do
   it "should the right fields" do
        respond_to(:idp)
        respond_to(:name)
   end
end
