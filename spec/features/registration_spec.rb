require 'spec_helper'

# User Story 1:

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Registration' do
  context 'pick up how many players do you want' do
    scenario 'I want one player' do
      register_one_player
      expect(page).to have_content 'Welcome, Katerina!'
    end
    scenario 'I want two players' do
      register_two_players
      expect(page).to have_content "Welcome, Katerina! It's your turn now!"
    end
  end
  # context 'pick up which game you want to play' do
  #   scenario 'submitting name' do
  #     register
  #     expect(page).to have_content 'Welcome, Katerina!'
  #   end
  #   scenario 'submitting name' do
  #     register
  #     expect(page).to have_content 'Welcome, Katerina!'
  #   end
  # end
end
