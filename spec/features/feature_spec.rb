require 'spec_helper'
require 'web_helper'

feature "Index page" do
  scenario 'Can run app and check page content' do
    visit ('/')
    expect(page).to have_content "Rock, Paper, Scissors game"
  end

  scenario 'player can choose to play against computer' do
    visit ('/')
    find('#standard', :visible => false).click
    find('#singleplayer', :visible => false).click
    click_button 'Submit'
    expect(page).to have_content "Enter your name"
  end

  scenario 'player can choose to play against another player' do
    visit ('/')
    find('#standard', :visible => false).click
    find('#multiplayer', :visible => false).click
    click_button 'Submit'
    expect(page).to have_content "Enter your names"
  end

  scenario 'player can choose to play standard version' do
    visit ('/')
    find('#standard', :visible => false).click
    find('#singleplayer', :visible => false).click
    click_button 'Submit'
    expect(page).to have_content "Rock, Paper, Scissors"
  end

  scenario 'player can choose to play extended version' do
    visit ('/')
    find('#extended', :visible => false).click
    find('#singleplayer', :visible => false).click
    click_button 'Submit'
    expect(page).to have_content "Rock, Paper, Scissors, Spock, Lizard"
  end
end

feature "Play page" do
  scenario 'Player can enter their name' do
    singleplayer_entername
    expect(page).to have_content "Select your move, Tom"
  end
end

feature "Choosing an option" do
  scenario 'Player sees Rock, Paper, Scissors in a standard version' do
    singleplayer_entername
    expect(page).to have_content "Tom Rock Paper Scissors"
  end
  scenario 'Player sees Rock, Paper, Scissors, Spock, Lizard in an extended version' do
    visit ('/')
    find('#extended', :visible => false).click
    find('#singleplayer', :visible => false).click
    click_button 'Submit'
    fill_in 'name', with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content "Tom Rock Paper Scissors Spock Lizard"
  end
end

feature "Result page is shown at the end" do
  scenario 'in a single player mode' do
    singleplayer_entername
    singleplayer_move
    expect(page).to have_content "What you you want to do next?"
  end

  scenario 'in a multiplayer mode' do
    multiplayer_game
    expect(page).to have_content "What you you want to do next?"
  end
end

feature "Game can be played again" do
  scenario 'in a single player mode' do
    singleplayer_entername
    singleplayer_move
    click_button 'Play again'
    expect(page).to have_content "Select your move"
  end
  scenario 'in a multiplayer mode' do
    multiplayer_game
    click_button 'Play again'
    select 'Rock', from: 'move'
    click_button 'Submit'
    expect(page).to have_content "Click 'Next' when you are ready"
  end
end
