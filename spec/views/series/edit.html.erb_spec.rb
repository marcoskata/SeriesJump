require 'spec_helper'

describe "series/edit" do
  before(:each) do
    @series = assign(:series, stub_model(Series,
      :id => "MyString",
      :nombre => "MyString",
      :sinopsis => "MyString",
      :temporada => 1,
      :comentarios => "MyString",
      :etiquetas => "MyString",
      :director => "MyString",
      :guionista => "MyString",
      :productores => "MyString"
    ))
  end

  it "renders the edit series form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => series_index_path(@series), :method => "post" do
      assert_select "input#series_id", :name => "series[id]"
      assert_select "input#series_nombre", :name => "series[nombre]"
      assert_select "input#series_sinopsis", :name => "series[sinopsis]"
      assert_select "input#series_temporada", :name => "series[temporada]"
      assert_select "input#series_comentarios", :name => "series[comentarios]"
      assert_select "input#series_etiquetas", :name => "series[etiquetas]"
      assert_select "input#series_director", :name => "series[director]"
      assert_select "input#series_guionista", :name => "series[guionista]"
      assert_select "input#series_productores", :name => "series[productores]"
    end
  end
end
