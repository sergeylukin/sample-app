require 'spec_helper'

describe "Static pages" do  

  let(:base_title) { 'SampleApp' }

  describe "Home page" do
    it "should have the right h1" do
      visit root_path
      page.should have_selector 'h1', text: 'Sample App'
    end
    it "should have the right title" do
      visit root_path
      page.should have_selector 'title', text: "#{base_title}"
    end
    it "should not have custom page title" do
      visit root_path
      page.should_not have_selector 'title', text: "Home |"
    end
  end

  describe "Help page" do
    it "should have the right h1" do
      visit help_path
      page.should have_selector 'h1', text: 'Help'
    end
    it "should have the right title" do
      visit help_path
      page.should have_selector 'title', text: "Help | #{base_title}"
    end
  end

  describe "About page" do
    it "should have the right h1" do
      visit about_path
      page.should have_selector 'h1', text: 'About Us'
    end
    it "should have the right title" do
      visit about_path
      page.should have_selector 'title', text: "About Us | #{base_title}"
    end
  end

  describe "Contact page" do
    it "should have the right h1" do
      visit contact_path
      page.should have_selector 'h1', text: 'Contact'
    end
    it "should have the right title" do
      visit contact_path
      page.should have_selector 'title', text: "Contact | #{base_title}"
    end
  end

  it "should have working links" do
    visit root_path
    click_link 'Help'
    page.should have_selector 'title', text: full_title('Help')
    click_link 'About'
    page.should have_selector 'title', text: full_title('About Us')
    click_link 'Contact'
    page.should have_selector 'title', text: full_title('Contact')
    click_link 'sample app'
    page.should have_selector 'h1', text: 'Sample App'
  end

end
