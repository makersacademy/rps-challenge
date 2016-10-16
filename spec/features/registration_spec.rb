require 'spec_helper'

RSpec.feature "Registration", :type => :feature do
  scenario  "Unregistered user registers" do
    visit "/"

    click_button "Register"
    expect(page).to have_text("Please fill out the form below")
  end
end
  # scenario "User fills in registration form" do
  #   visit
  # end
