class LinksController < ApplicationController
  def create  
    @pelicula = Pelicula.find(params[:pelicula_id])  
    @link = @pelicula.links.create!(params[:link])  
    redirect_to @pelicula, :notice => "Comment created!"    
  end
end
