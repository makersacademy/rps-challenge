require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Playing a game' do
  before do
    visit '/'
    fill_in 'name', with: 'Ferdinand' # first the player has to register by entering their name
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
  scenario 'Choose a tool' do # how do you imagine this scenario?
    click_button 'Rock'
    expect(page).to have_content "Rock! You chose wisely."
  end

  # As a marketeer
  # So I can play a game
  # I want the game to choose an option randomly
  scenario 'Game randomly chooses "Rock"' do # how do you imagine this scenario?
    click_button 'Rock'

    message = find(:css, "#bot_tool").text
    # Capybara has a method not only to match but also to retrieve an element from the page and to see it
    expect(possible_messages).to include message #'O-oh! The bot chose the Rock tool.'
  end

  def possible_messages
    [:rock, :paper, :scissors].map { |tool| "O-oh! The bot chose the #{tool.to_s.capitalize} tool."} # the message has to be exactly the same as in the view file to match and therefore pass!
  end
end
