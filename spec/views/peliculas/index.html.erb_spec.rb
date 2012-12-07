require 'spec_helper'

describe "peliculas/index" do
  before(:each) do
    assign(:peliculas, [
      stub_model(Pelicula,
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
      ),
      stub_model(Pelicula,
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
      )
    ])
  end

  it "renders a list of peliculas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Sinopsis".to_s, :count => 2
    assert_select "tr>td", :text => "Saga".to_s, :count => 2
    assert_select "tr>td", :text => "Trailers".to_s, :count => 2
    assert_select "tr>td", :text => "Comentarios".to_s, :count => 2
    assert_select "tr>td", :text => "Etiquetas".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => "Guionista".to_s, :count => 2
    assert_select "tr>td", :text => "Productores".to_s, :count => 2
  end
end
