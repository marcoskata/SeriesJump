class CommentsController < ApplicationController
  def create  
    @pelicula = Pelicula.find(params[:pelicula_id])  
    @comment = @pelicula.comments.create!(params[:comment])  
    redirect_to @pelicula, :notice => "Comment created!"    
  end
end
