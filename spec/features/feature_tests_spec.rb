require 'spec_helper'
require_relative 'web_helpers'

#COMPUTER PLAYER TESTS
feature 'Entering name' do
  scenario 'index page form' do
    visit '/'
    expect(page).to have_content "Enter your name to play"
  end

  scenario 'submiting name' do
    sign_in_and_play
    expect(page).to have_content 'Player one: Bukowski'
  end
end

feature 'Computer player' do
  scenario 'play page has computer player too' do
    sign_in_and_play
    expect(page).to have_content 'Computer'
  end
end

feature 'Choosing "weapon"' do
  scenario "should be able to see options" do
    sign_in_and_play
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario "should be able to select 'weapon'" do
    sign_in_and_play
    choose('scissors')
    click_button('Submit')
    expect(page).to have_content 'Bukowski chose Scissors'
  end

  scenario "computer should pick a weapon" do
    sign_in_and_play
    choose('scissors')
    allow(Game.instance.player_2).to receive(:weapon).and_return(:rock)
    click_button('Submit')
    expect(page).to have_content 'Computer chose Rock'
  end
end

#GENERIC LOGIC TESTS
feature "Player 1 winning" do
  scenario "player chooses rock and computer chooses scissors" do
    sign_in_and_play
    winning_tests("rock", "scissors")
    expect(page).to have_content 'Bukowski wins!'
  end
end

feature "Player 2 winning" do
  scenario "computer chooses rock and player chooses scissors" do
    sign_in_and_play
    winning_tests("scissors", "rock")
    expect(page).to have_content 'Computer wins!'
  end
end

feature "Draw" do
  scenario "expect draw if both choose rock" do
    sign_in_and_play
    winning_tests("rock", "rock")
    expect(page).to have_content 'draw'
  end
end

#TWO PLAYER TESTS
feature 'Entering name' do
  scenario 'submiting name' do
    sign_in_and_play_2p
    expect(page).to have_content 'Player one: Bukowski'
    expect(page).to have_content 'Player two: Charles'
  end
end
