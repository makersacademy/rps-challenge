require "capybara/rspec"
require_relative "../../app"


feature 'Name Collector' do
    scenario 'can collect the player\'s name & output it' do
        enter_name_and_start_playing
        expect(page).to have_content("May the force be with you, Thomas!")
    end
end
