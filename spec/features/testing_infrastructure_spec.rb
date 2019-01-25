require_relative 'web_helpers.rb'

feature 'Testing infrastructure' do

  # As a marketeer
  # So that I can see my name in lights
  # I would like to register my name before playing an online game

  scenario 'App can load and have content' do
    visit ('/')
    expect(page).to have_content 'Welcome, player'
  end

  scenario 'Can input and submit a player name' do
    enter_name_and_play
    expect(page).to have_content 'Rock, paper, scissors'
    expect(page).to have_content 'Test Name'
  end

  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors

  scenario 'Can select an option from Rock, Paper, and Scissors' do
    enter_name_and_play
    click_button('Rock')
  end

  scenario 'Display user selection once button is pressed' do
    enter_name_and_play
    click_button('Rock')
    expect(page).to have_content 'Your selection: Rock'
  end

end
