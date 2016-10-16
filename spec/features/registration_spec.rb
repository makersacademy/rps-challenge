require 'spec_helper'

RSpec.feature "Registration", :type => :feature do
  scenario "Unregistered user registers" do
    visit "/"

    click_button "Register"
    expect(page).to have_text("Please pick a username and password")
  end

  scenario "User fills in registration form" do
    register
    
    expect(page).to have_text("Thank you for registering!")
  end
  scenario "Return to home page after registering" do
    register
    click_button "Return to homepage"
  end
end
RSpec.feature "Play 'Rock, paper scissors'", :type => :feature do
  scenario "Start new game" do
    register
    click_button "Return to homepage"
    click_button "Sign in"


    expect(page).to have_text("Please enter your username and password")
  end
end
