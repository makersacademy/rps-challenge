require './app/rps_web.rb'
require_relative 'web_helpers'

feature 'weapons' do
  context 'the player will be presented the choices' do
    scenario 'rock' do
      sign_in_and_play
      find_button('rock').click
    end

    scenario 'paper' do
      sign_in_and_play
      find_button('paper').click
    end

    scenario 'scissors' do
      sign_in_and_play
      find_button('scissors').click
    end
  end

  context 'the player will make a choice and get a confirmation' do
    scenario 'chooses rock' do
      sign_in_and_play
      click_on 'rock'
      expect(page).to have_content "Zoe chose Rock"
    end

    scenario 'chooses paper' do
      sign_in_and_play
      click_on 'paper'
      expect(page).to have_content "Zoe chose Paper"
    end

    scenario 'chooses scissors' do
      sign_in_and_play
      click_on 'scissors'
      expect(page).to have_content "Zoe chose Scissors"
    end
  end
end
