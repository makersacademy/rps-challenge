require './app/rps_web.rb'
require_relative 'web_helpers'

feature 'weapons' do
  context 'the player will be presented the choices' do
    scenario 'rock' do
      sign_in_and_play
      find_button('Rock').click
    end

    scenario 'paper' do
      sign_in_and_play
      find_button('Paper').click
    end

    scenario 'scissors' do
      sign_in_and_play
      find_button('Scissors').click
    end
  end

  context 'the player will make a choice and get a confirmation' do
    scenario 'chooses rock' do
      sign_in_and_play
      click_on 'Rock'
      expect(page).to have_content "Zoe chose Rock!"
    end

    scenario 'chooses paper' do
      sign_in_and_play
      click_on 'Paper'
      expect(page).to have_content "Zoe chose Paper!"
    end

    scenario 'chooses scissors' do
      sign_in_and_play
      click_on 'Scissors'
      expect(page).to have_content "Zoe chose Scissors!"
    end
  end
end
