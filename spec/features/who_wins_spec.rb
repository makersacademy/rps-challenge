require 'capybara/rspec'
require_relative '../../app'
Capybara.app = Rps

feature 'declares winner' do

    before do
        visit('/who-wins')
    end

    scenario 'has the winners name' do
        sign_in_and_play
        expect(page).to have_content("Evie")
    end

end