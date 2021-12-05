require 'capybara/rspec'
require_relative '../../app'
Capybara.app = Rps

feature 'home page and name form' do
    before do
        visit('/')
    end

    scenario 'home page has game title' do
        expect(page).to have_content("Rock Paper Scissors")
    end

    scenario 'has name form' do
        expect(page.has_field?('name')).to be_truthy
    end

    scenario 'player name appears' do
        sign_in_and_play
        expect(page).to have_content("Evie")
    end
end