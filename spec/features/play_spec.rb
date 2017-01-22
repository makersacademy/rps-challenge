require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Playing a game' do
  RANDOM_SEED = 21999
  before do
    visit '/'
    fill_in 'player_name', with: 'Ferdinand' # first the player has to register by entering their name
    click_button 'Submit'
  end

  # As a marketeer
  # So I can play a game
  # I want to be able to see the available tools
  scenario 'Seeing the available forms' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As a marketeer
  # So I can play a game
  # I want to be able to choose a tool to play
  scenario 'Choose a utensil' do
    click_button 'Rock'
    expect(page).to have_content "Rock! You chose wisely."
  end

  # As a marketeer
  # So I can play a game
  # I want the game to choose an option
  scenario 'Game chooses "Rock"' do # how do you imagine this scenario?
    click_button 'Rock'
    message = find(:css, "#bot_utensil").text
    # Capybara has a method not only to match but also to retrieve an element from the page and to see it
    expect(possible_messages).to include message #'O-oh! The bot chose the Rock tool.'
  end

  # As a marketeer
  # So I can play a game
  # I want the game to choose an option randomly
  scenario 'Game chooses a game form randomly' do # how do you imagine this scenario?
    srand(RANDOM_SEED)
    click_button 'Scissors'
    expect(page).to have_content "O-oh! The gamebot chose the Scissors utensil."
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |utensil| "O-oh! The gamebot chose the #{utensil.to_s.capitalize} utensil."} # the message has to be exactly the same as in the view file to match and therefore pass!
  end
end
