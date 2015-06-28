require 'spec_helper'

feature 'Starting a new game' do
  scenario 'It can receive a name' do
    visit '/'
    fill_in 'name', with: 'Kirsten'
    click_button('Submit')
    expect(page).to have_content "Welcome, Kirsten!"
  end
end

feature 'Playing the game'do
  scenario 'It can ask the player to choose rock, paper or scissors' do
    visit '/'
    fill_in 'name', with: 'Kirsten'
    click_button('Submit')
    click_link("PLAY!")
    expect(page).to have_content "Choose: Rock, Paper or Scissors?"
  end

  scenario 'It progresses to a button to load the results of the game' do
    visit '/gameplay'
    click_button('Submit')
    expect(page).to have_content "Let's find out who won!"
  end

  scenario 'It tells the player the result of the game' do
    visit '/waiting_room'
    click_link("GET RESULT")
    expect(page).to have_content "winner"
  end
end

feature 'Beginning a new game' do
  scenario 'At the end, it gives player the option to start a new game' do
    visit '/result'
    click_link('Play again!')
    expect(page).to have_content 'Choose:'
  end
end
