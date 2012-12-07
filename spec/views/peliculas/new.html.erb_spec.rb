require 'spec_helper'

describe "peliculas/new" do
  before(:each) do
    assign(:pelicula, stub_model(Pelicula,
      :id => "MyString",
      :nombre => "MyString",
      :sinopsis => "MyString",
      :saga => "MyString",
      :trailers => "MyString",
      :comentarios => "MyString",
      :etiquetas => "MyString",
      :director => "MyString",
      :guionista => "MyString",
      :productores => "MyString"
    ).as_new_record)
  end

  it "renders new pelicula form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => peliculas_path, :method => "post" do
      assert_select "input#pelicula_id", :name => "pelicula[id]"
      assert_select "input#pelicula_nombre", :name => "pelicula[nombre]"
      assert_select "input#pelicula_sinopsis", :name => "pelicula[sinopsis]"
      assert_select "input#pelicula_saga", :name => "pelicula[saga]"
      assert_select "input#pelicula_trailers", :name => "pelicula[trailers]"
      assert_select "input#pelicula_comentarios", :name => "pelicula[comentarios]"
      assert_select "input#pelicula_etiquetas", :name => "pelicula[etiquetas]"
      assert_select "input#pelicula_director", :name => "pelicula[director]"
      assert_select "input#pelicula_guionista", :name => "pelicula[guionista]"
      assert_select "input#pelicula_productores", :name => "pelicula[productores]"
    end
  end
end
