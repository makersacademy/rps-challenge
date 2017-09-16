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
end
