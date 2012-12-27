class ComentsController < ApplicationController
 def create  
    @series = Series.find(params[:series_id])  
    @coment = @series.coments.create!(params[:coment])  
    redirect_to @series, :notice => "Comment created!"    
  end 
end
