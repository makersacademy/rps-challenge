require 'spec_helper'

RSpec.feature "Registration", :type => :feature do
  scenario "Unregistered user registers" do
    register
    click_button "Return to homepage"
    click_button "Sign in"
    fill_in "Username", :with => "Royston"
    fill_in "Password", :with => "password"
    click_button "Play"

    expect(page).to have_text("Welcome Royston")
  end
end
