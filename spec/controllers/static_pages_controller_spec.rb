require 'spec_helper'

describe StaticPagesController, :type => :controller  do
   render_views
   describe "GET 'home'" do
      before (:each) do
        get 'home'
      end

      it "returns http success" do
         response.should be_success
      end

      it "should have the right template" do
         response.should render_template "layouts/application" #layout
         #response.should have_selector("title:contains('SeriesJump')") 
         #page.should have_xpath("//title", :text => "SeriesJump")
         #response.should have_selector("title",:text => "SeriesJump")
      end
  
      it "should have the right view" do
         response.should render_template 'home'  #view
         #click_link('Series')
         #find_link('Series').visible?
         #page.has_xpath?('//ul/li')
         #page.has_content?('Series')
      end     
      
      it "should have the right selector"do
         page.has_selector?(:xpath, '//ul/li')
      end

      it "should have the right links" do
         page.has_xpath?('.//li', :text => 'series', :visible => true)
         page.has_xpath?('.//li', :text => 'peliculas', :visible => true)
         page.has_xpath?('.//li', :text => 'usuarios', :visible => true)
      end
  
      #it "should have the right elements" do
       #  get 'home'
       #  page.find('#foo').find('.bar')
      #end 
 
     # it "should have a login link when no current user" do
      #   view.should_receive(:current_user).and_return(nil)
       #  render
       #  rendered.should have_selector("a", :href => login_path, :content => "log in")
     # end 
     #it "should display a title" do
        # book = mock_model(Book, :title => "Dune")
        # assign(:book, book)
        # render
         #rendered.should have_selector("h1", :content => "Dune")
      #end     
  end

  describe "GET 'privacy'" do
      before(:each)do
         get 'privacy'
      end

      it "returns http success" do
         response.should be_success
      end
   end

  describe "GET 'help'" do
      before(:each)do
         get 'help'
      end

      it "returns http success" do
         response.should be_success
      end
   end

  describe "GET 'about'" do
      before(:each)do
        get 'about'
      end

      it "returns http success" do
         response.should be_success
      end
   end
  
   describe "GET 'terms'" do
      before(:each)do
         get 'terms'
      end

      it "returns http success" do
         response.should be_success
      end
   end
end
