require 'spec_helper'

feature 'Starting a new game' do
  scenario 'user is asked to enter name' do
    visit '/'
    expect(page).to have_content("Welcome to Rock Paper Scissors Online!")
  end

  scenario 'user is taken to the game page' do
    visit '/'
    fill_in('name', with: 'Owen')
    click_button('Submit')
    expect(current_path).to eq '/gamepage'
  end

  scenario "user is given name 'Player1' and is taken to the game page" do
    visit '/'
    click_button('Submit')
    expect(page).to have_content("Hello, Player 1! Let the games begin! Make your selection! Rock Paper Scissors")
  end
end
