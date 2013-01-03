class HomeController < ApplicationController
  def index
     @users = User.order_by(:name.asc)
  end
end


