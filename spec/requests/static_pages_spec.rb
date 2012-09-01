require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the right h1" do
      visit '/static_pages/home'
      page.should have_selector 'h1', text: 'Sample App'
    end
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector 'title', text: 'Home | SampleApp'
    end
  end

  describe "Help page" do
    it "should have the right h1" do
      visit '/static_pages/help'
      page.should have_selector 'h1', text: 'Help'
    end
    it "should have the right title" do
      visit '/static_pages/help'
      page.should have_selector 'title', text: 'Help | SampleApp'
    end
  end

  describe "About page" do
    it "should have the right h1" do
      visit '/static_pages/about'
      page.should have_selector 'h1', text: 'About Us'
    end
    it "should have the right title" do
      visit '/static_pages/about'
      page.should have_selector 'title', text: 'About Us | SampleApp'
    end
  end

  describe "Contact page" do
    it "should have the right h1" do
      visit '/static_pages/contact'
      page.should have_selector 'h1', text: 'Contact'
    end
    it "should have the right title" do
      visit '/static_pages/contact'
      page.should have_selector 'title', text: 'Contact | SampleApp'
    end
  end

end
