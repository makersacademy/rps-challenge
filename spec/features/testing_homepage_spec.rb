require 'capybara/rspec'
require_relative '../../app'

feature "testing the homepage" do 
  scenario "open up the homepage and it works and shows a message" do 
    visit ('/')
    expect(page).to have_content("Sign in to play")
  end
end 
