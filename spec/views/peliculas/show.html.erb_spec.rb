require 'spec_helper'

describe "peliculas/show" do
  before(:each) do
    @pelicula = assign(:pelicula, stub_model(Pelicula,
      :id => "Id",
      :nombre => "Nombre",
      :sinopsis => "Sinopsis",
      :saga => "Saga",
      :trailers => "Trailers",
      :comentarios => "Comentarios",
      :etiquetas => "Etiquetas",
      :director => "Director",
      :guionista => "Guionista",
      :productores => "Productores"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id/)
    rendered.should match(/Nombre/)
    rendered.should match(/Sinopsis/)
    rendered.should match(/Saga/)
    rendered.should match(/Trailers/)
    rendered.should match(/Comentarios/)
    rendered.should match(/Etiquetas/)
    rendered.should match(/Director/)
    rendered.should match(/Guionista/)
    rendered.should match(/Productores/)
  end
end
