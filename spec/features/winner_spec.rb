require "capybara/rspec"
require_relative "../../app"

feature 'Winner Decider' do
    scenario 'determines who wins between player & computer' do
      enter_name_and_start_playing
      select 'Rock', from: 'playermove'
      click_on("Confirm Selection")
      click_on("Find Out Winner")
      expect(page).to have_content "You are the winner!"
    end
end
