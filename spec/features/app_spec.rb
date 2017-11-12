require 'capybara/rspec'
require_relative 'spec_helpers'

describe 'Rps', :type => :feature do

  context 'When starting a new page' do
    it 'should say hello to the player' do
      visit '/'
      expect(page).to have_content "Hello player! You're welcome to RPS"
    end

    it 'should have a form for the players' do
      visit '/'
      expect(page).to have_field('player')
    end
  end

  context 'When starting a new game' do
    it 'should have the player name' do
      sign_in_and_play
      expect(page).to have_content('Welcome Cristhian, please choose an option')
    end
  end
end
