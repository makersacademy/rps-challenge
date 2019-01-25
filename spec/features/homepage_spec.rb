require "capybara/rspec"
require_relative "../../app"

feature 'Name Collector' do
    scenario 'can collect the player\'s name & output it' do
        visit '/'
        fill_in :firstname, with: 'Thomas'
        click_on("Start Playing!")
        expect(page).to have_content("May the force be with you, Thomas!")
    end
end
