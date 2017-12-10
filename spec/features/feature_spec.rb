Capybara.app = RPSApp

require_relative 'spec_helper'

feature 'Entering player name' do
  scenario 'Allows users to input their name' do
    sign_in_and_play
    expect(page).to have_content('player_name Vs. Computer')
  end
end

context 'When starting a new game' do
    it 'should have the player name' do
      sign_in_and_play
      visit('/play')
      expect(page).to have_content('player_name, please choose an option')
    end

    it 'should have a rock button' do
      sign_in_and_play
      visit('/play')
      expect(page).to have_button('Rock')
    end
    it 'should have a paper button' do
      sign_in_and_play
      visit('/play')
      expect(page).to have_button('Paper')
    end
    it 'should have a scissor button' do
      sign_in_and_play
      visit('/play')
      expect(page).to have_button('Scissor')
    end

  end
