require "spec_helper"

RSpec.feature "name in shiny lights", :type => :feature do

  scenario "User enters their name and it is displayed" do
    visit "/"

    fill_in "Name", :with => "Dagmara"

    click_button "Game on!"

    expect(page).to have_content("ROCK PAPER SCISSORS of the Century: Dagmara vs Karma")
  end
end
