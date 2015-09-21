require 'spec_helper'

feature 'Starting a new game' do

  before do
    visit '/'
    fill_in('name', with: "John")
    click_button('Submit')
  end

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content 'Please enter your name:'
  end

  scenario 'have a welcome message after I have entered my name' do
    expect(page).to have_content "Welcome John"
    expect(page).to have_content "Click Start to begin against a computer"
  end

  scenario 'can start a game' do
    click_link('Start')
    expect(page).to have_content 'Choose Wisely John'
  end

  scenario 'can choose rock' do
    click_link("Start")
    click_link('rock')
    expect(page).to have_content 'The Winner is...'
  end

  scenario 'can play mutliplayer' do
    expect(page).to have_content 'Click Multiplayer to begin'
  end

  scenario 'multiplayer game - draw' do
    click_link('Multiplayer')
    fill_in("name", with: "Ben")
    click_button "Submit"
    click_link("paper")
    click_link("paper")
    expect(page).to have_content "It's a draw!"
  end

  scenario 'multiplayer game - player2 wins' do
    click_link("Multiplayer")
    fill_in("name", with: "Ben")
    click_button "Submit"
    click_link("paper")
    click_link("scissors")
    expect(page).to have_content "Ben wins!"
  end

  scenario 'multiplayer game - player1 wins' do
    click_link("Multiplayer")
    fill_in("name", with: "Ben")
    click_button "Submit"
    click_link("rock")
    click_link("scissors")
    expect(page).to have_content "John wins!"
  end

  scenario 'can play more games' do
    click_link("Multiplayer")
    fill_in("name", with: "Ben")
    click_button "Submit"
    click_link("rock")
    click_link("scissors")
    expect(page).to have_content "Play again"
  end

end
