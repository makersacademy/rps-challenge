require 'spec_helper'
require 'web_helper'

feature "Index page" do
  scenario 'Can run app and check page content' do
    visit ('/')
    expect(page).to have_content "Rock, Paper, Scissors game"
  end

  scenario 'player can choose to play against computer' do
    visit ('/')
    click_button 'Computer'
    expect(page).to have_content "Enter your name"
  end

  scenario 'player can choose to play against another player' do
    visit ('/')
    click_button 'Another player'
    expect(page).to have_content "Enter your names"
  end
end

feature "Game against computer"
feature "Play page" do
  scenario 'Player can enter their name' do
    singleplayer_entername
    expect(page).to have_content "Select your move, Tom"
  end
end

feature "Choosing an option" do
  scenario 'Player can choose an option' do
    singleplayer_entername
    expect(page).to have_content "Select your move"
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
