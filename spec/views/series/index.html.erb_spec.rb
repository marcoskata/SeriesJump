require 'spec_helper'

describe "series/index" do
  before(:each) do
    assign(:series, [
      stub_model(Series,
        :id => "Id",
        :nombre => "Nombre",
        :sinopsis => "Sinopsis",
        :temporada => 1,
        :comentarios => "Comentarios",
        :etiquetas => "Etiquetas",
        :director => "Director",
        :guionista => "Guionista",
        :productores => "Productores"
      ),
      stub_model(Series,
        :id => "Id",
        :nombre => "Nombre",
        :sinopsis => "Sinopsis",
        :temporada => 1,
        :comentarios => "Comentarios",
        :etiquetas => "Etiquetas",
        :director => "Director",
        :guionista => "Guionista",
        :productores => "Productores"
      )
    ])
  end

  it "renders a list of series" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id".to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Sinopsis".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Comentarios".to_s, :count => 2
    assert_select "tr>td", :text => "Etiquetas".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => "Guionista".to_s, :count => 2
    assert_select "tr>td", :text => "Productores".to_s, :count => 2
  end
end
