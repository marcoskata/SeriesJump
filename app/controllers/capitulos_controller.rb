class CapitulosController < ApplicationController
  def create  
    @series = Series.find(params[:series_id])  
    @capitulo = @series.capitulos.create!(params[:capitulo])  
    redirect_to @series, :notice => "Comment created!"    
  end  
end
