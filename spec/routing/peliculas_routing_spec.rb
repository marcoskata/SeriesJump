require "spec_helper"

describe PeliculasController do
  describe "routing" do

    it "routes to #index" do
      get("/peliculas").should route_to("peliculas#index")
    end

    it "routes to #new" do
      get("/peliculas/new").should route_to("peliculas#new")
    end

    it "routes to #show" do
      get("/peliculas/1").should route_to("peliculas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/peliculas/1/edit").should route_to("peliculas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/peliculas").should route_to("peliculas#create")
    end

    it "routes to #update" do
      put("/peliculas/1").should route_to("peliculas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/peliculas/1").should route_to("peliculas#destroy", :id => "1")
    end

  end
end
