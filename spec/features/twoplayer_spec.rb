require 'spec_helper'



feature 'Starting a new game' do
  scenario 'When go to the game I am told it is called Rock, Paper, Scissors - Two Player Game' do
    visit '/twoplayer'
    expect(page).to have_content "Rock, Paper, Scissors - Two Player Game"
  end

  scenario 'As Player1 I am asked to enter my name' do
    visit '/twoplayer'
    expect(page).to have_content "Player 1 Please enter your name"
  end

  scenario 'As Player2 I am asked to enter my name' do
    visit'/twoplayer'
    fill_in('two_player_name', :with => 'Philip')
    select('rock', :from => 'your_choice')
    click_button('Play')
    visit'/twoplayer'
    expect(page).to have_content "Player 2 Please enter your name"
  end


  scenario "When I submit 'Rock' I am told if I have won" do
    visit '/twoplayer'
    fill_in('two_player_name', :with => 'Philip')
    select('rock', :from => 'your_choice')
    click_button('Play')
    expect(page).to have_content "The result is"
  end

end
