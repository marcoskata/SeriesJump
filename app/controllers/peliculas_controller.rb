class PeliculasController < ApplicationController
  # GET /peliculas
  # GET /peliculas.json
  def index
    @peliculas = Pelicula.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @peliculas }
    end
  end

  # GET /peliculas/1
  # GET /peliculas/1.json
  def show
    @pelicula = Pelicula.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pelicula }
    end
  end

  # GET /peliculas/new
  # GET /peliculas/new.json
  def new
    @pelicula = Pelicula.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pelicula }
    end
  end

  # GET /peliculas/1/edit
  def edit
    @pelicula = Pelicula.find(params[:id])
  end

  # POST /peliculas
  # POST /peliculas.json
  def create
    @pelicula = Pelicula.new(params[:pelicula])

    respond_to do |format|
      if @pelicula.save
        format.html { redirect_to @pelicula, notice: 'Pelicula was successfully created.' }
        format.json { render json: @pelicula, status: :created, location: @pelicula }
      else
        format.html { render action: "new" }
        format.json { render json: @pelicula.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /peliculas/1
  # PUT /peliculas/1.json
  def update
    @pelicula = Pelicula.find(params[:id])

    respond_to do |format|
      if @pelicula.update_attributes(params[:pelicula])
        format.html { redirect_to @pelicula, notice: 'Pelicula was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pelicula.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peliculas/1
  # DELETE /peliculas/1.json
  def destroy
    @pelicula = Pelicula.find(params[:id])
    @pelicula.destroy

    respond_to do |format|
      format.html { redirect_to peliculas_url }
      format.json { head :no_content }
    end
  end
end
