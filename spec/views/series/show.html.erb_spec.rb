require 'spec_helper'

describe "series/show" do
  before(:each) do
    @series = assign(:series, stub_model(Series,
      :id => "Id",
      :nombre => "Nombre",
      :sinopsis => "Sinopsis",
      :temporada => 1,
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
    rendered.should match(/1/)
    rendered.should match(/Comentarios/)
    rendered.should match(/Etiquetas/)
    rendered.should match(/Director/)
    rendered.should match(/Guionista/)
    rendered.should match(/Productores/)
  end
end
