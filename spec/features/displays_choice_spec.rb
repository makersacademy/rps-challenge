require "capybara/rspec"
require_relative "../../app"

feature 'Choice Collector' do
    scenario 'lets user make a choice & displays it' do
        enter_name_and_start_playing
        select 'Rock', from: 'playermove'
        click_on('Confirm Selection')
        expect(page).to have_content("You have selected Rock as your move")
    end
end
