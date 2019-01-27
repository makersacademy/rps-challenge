require "capybara/rspec"
require_relative "../../app"

#This test isn't actually passing as I'm unsure how to use stubs/mocks with Capybara

feature 'Winner Decider' do
    scenario 'determines who wins between player & computer' do
      enter_name_and_start_playing
      select 'Rock', from: 'playermove'
      click_on("Confirm Selection")
      click_on("Find Out Winner")
      expect(page).to have_content "PASSING TEST"
    end
end
