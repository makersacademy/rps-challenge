require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  # As a marketeer
  # So I can play,
  # I want to see the rock, paper, scissors option
  scenario 'see the different options' do
    register_name
    expect(page).to have_content 'Rock'
    expect(page).to have_button("Rock")
    expect(page).to have_content 'Paper'
    expect(page).to have_button("Paper")
    expect(page).to have_content 'Scissors'
    expect(page).to have_button("Scissors")
  end
end
