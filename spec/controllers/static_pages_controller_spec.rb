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
     end
  
      it "should have the right view" do
         response.should render_template 'home'  #view
      end     
      
      it "should have the right title" do
         page.has_selector?('title', :text => 'SeriesJump', :visible => true)
      end

      it "should have the right selector"do
         page.has_selector?(:xpath, '//ul/li')
      end
     
      it "should have the right h2" do
         page.has_selector?('h2', :text => 'Series Jump', :visible => true, :count => 1) 
      end

      it "should not have wrong h2" do
         page.has_no_selector?('h2', :text => 'Hamburger', :visible => true, :count => 1)
      end

      it "should have the right links" do
         page.has_xpath?('.//li', :text => 'series', :visible => true)
         page.has_xpath?('.//li', :text => 'peliculas', :visible => true)
         page.has_xpath?('.//li', :text => 'usuarios', :visible => true)
      end
  
      it "should have the right h2" do
         page.has_selector?('footer', :text => 'SeriesJump Company 2013', :visible => true)
      end

      it "should have the right stylesheet scripts" do
         #page.has_selector('script',:text => 'http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js')
         #page.should have_xpath("//script[starts-with(@src,'http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js')]")
         #xpath( '//span[ @class = $class]', class="I'm a little \"teapot\"") 
         #page.has_xpath?("//img[@src='#{some_path}']") 
      end
  

      #it "the page background should be white$" do
        # page.evaluate_script("$('body').css('background-color')").should == 'rgb(255, 255, 255)'
      #end

     # it "should have a login link when no current user" do
      #   view.should_receive(:current_user).and_return(nil)
       #  render
       #  rendered.should have_selector("a", :href => login_path, :content => "log in")
     # end  
  end

  describe "GET 'privacy'" do
      before(:each)do
         get 'privacy'
      end

      it "returns http success" do
         response.should be_success
      end
  
     it "should have the right view" do
         response.should render_template 'privacy'  #view
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
