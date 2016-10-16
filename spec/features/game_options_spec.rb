require 'spec_helper'

feature 'starting to play the game' do

  scenario 'it shows options for the game' do
  sign_in_and_play
  expect(page).to have_content 'Rock'
  expect(page).to have_content 'Paper'
  expect(page).to have_content 'Scissors'
end

  scenario 'the player is able to select a weapon' do
  sign_in_and_play
  choose 'Rock'
end
end
