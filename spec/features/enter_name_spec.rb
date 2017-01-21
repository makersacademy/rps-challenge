require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Register a player name" do
  scenario "Adds Player name" do
    visit '/names'
    fill_in :player_name, :with => "Edyta"
    click_button "Submit"

    expect(page).to have_content("Hello, Edyta!")
  end
end


# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
