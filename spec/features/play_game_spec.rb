require 'spec_helper'
require 'game'

feature 'the player can enter their name' do

  scenario 'player is asked to enter their name' do
    visit '/'
    expect(page).to have_content 'Hello new player. Please enter your name.'
  end

  scenario 'player can enter their name and is greeted' do
    visit '/'
    fill_in('name', with: 'Kate')
    click_on('Submit name')
    expect(page).to have_content 'Welcome, Kate!'
  end

end

feature 'the player can begin a game' do

  before(:each) do
    visit '/'
    fill_in('name', with: 'Kate')
    click_on('Submit name')
  end

  scenario 'the player can click to begin a new game' do
    click_on('Begin new game')
    expect(page).to have_content 'Kate, when you\'re ready make your choice...'
  end

  scenario 'the player can enter and submit their choice' do
    click_on('Begin new game')
    expect(page).to have_selector('#Play')
  end

  scenario 'player is told to enter valid item' do
    visit '/'
    fill_in('name', with: 'Kate')
    click_on('Submit name')
    click_on('Begin new game')
    fill_in('weapon', with: 'banana')
    click_on('Play')
    expect(page).to have_content 'Please choose either rock, paper or scissors'
  end

end

feature 'player can win or lose and start a new game' do
  before(:each) do
    visit '/'
    fill_in('name', with: 'Kate')
    click_on('Submit name')
    click_on('Begin new game')
  end

  xscenario 'player is told if they have won' do
    fill_in('weapon', with: 'rock')
    click_on('Play')
    expect(page).to have_content 'rock beats scissors, you win!'
  end

  xscenario 'player is told if they have lost' do
    fill_in('weapon', with: 'paper')
    click_on('Play')
    expect(page).to have_content 'scissors beats paper, you lose :('
  end

  scenario 'player can click to play again' do
    fill_in('weapon', with: 'rock')
    click_on('Play')
    expect(page).to have_selector('#play_again')
  end

  scenario 'player is taken back to the choose page if they click play again' do
    fill_in('weapon', with: 'rock')
    click_on('Play')
    click_on('Play again?')
    expect(page).to have_content 'Kate, when you\'re ready make your choice...'
  end

end


