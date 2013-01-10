require 'spec_helper'

describe SeguirsController do
   it "should the right fields" do
      respond_to(:idu)
      respond_to(:name)
     end

end
