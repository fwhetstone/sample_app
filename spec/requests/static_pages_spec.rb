require 'spec_helper'

describe "Static Pages" do
	
	let(:base_title) { "Ruby on Rails Tutorial Sample App" }

	describe "Home page" do

		it "should have the h1 'Sample App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Sample App')
		end

		it "should have the base title" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "#{base_title}")
		end
		
		it "should have the custom page title" do
			visit '/static_pages/home'
			page.should_not have_selector('title', :text => '| Home')
		end
	end # Home page
  
	describe "Help page" do
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title}")
		end
				
		it "should have the custom page title" do
			visit '/static_pages/help'
			page.should_not have_selector('title', :text => '| Help')
		end
	end # Help Page
  
	describe "About page" do
		it "should have the h1 'About'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
		end

		it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{base_title}")
		end
				
		it "should have the custom page title" do
			visit '/static_pages/about'
			page.should_not have_selector('title', :text => '| About')
		end
	end # About page
  
	describe "Contact" do

		it "should have the h1 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact')
		end

		it "should have the title 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "#{base_title}")
		end
				
		it "should have the custom page title" do
			visit '/static_pages/contact'
			page.should_not have_selector('title', :text => '| Contact')
		end
	end # Contact Page
  
end