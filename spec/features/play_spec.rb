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
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'user can choose options' do
    register_name
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario 'confirmation of users choice' do
    register_name
    click_button "Rock"
    expect(page).to have_content "Morgan chose Rock!"
  end

  #I want the game/computer to choose an option
  scenario 'the computer chooses an option' do
    register_name
    click_button "Rock"
    message = find(:css, '#opponent').text
    expect(possible_moves).to include message
    # expect(page).to have_content "Opposing player chose Rock!"
  end

  scenario 'game chooses a random option' do
    register_name
    srand(4)
    click_button "Rock"
    expect(page).to have_content "Opposing player chose Scissors!"
  end

  def possible_moves
    [:rock, :paper, :scissors].map { |shape| "Opposing player chose #{shape.to_s.capitalize}!"}
  end
end
