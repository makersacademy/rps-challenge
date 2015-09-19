require 'spec_helper'

feature 'Register name' do
  scenario 'Home page has Start Game button' do
    visit '/'
    find_button('Proceed').click
  end

  scenario 'Demands player name' do
    visit '/'
    click_button('Proceed')
    expect(page).to have_content("What's your name!")
  end

  scenario 'A name has to be registered' do
    visit '/name'
    fill_in('name', with: '')
    click_button 'Next'
    expect(page).to have_content("What's your name!")
  end
end

feature 'Instructions' do
  scenario 'Once player has registered, instructions are given' do
    visit '/name'
    fill_in('name', with: 'Dan')
    click_button 'Next'
    expect(page).to have_content("Hello, Dan! Welcome to Rock-Paper-Scissors-Lizard-Spock")
  end

feature 'Rock-Paper-Scissors-Lizard-Spock Game'
  xscenario 'Game Starts' do
    visit '/instructions'
    find_button("Let's Rock").click
  end

  xscenario 'Player is given five shapes to throw' do

  end

  xscenario 'Player HAS to throw a shape' do

  end

  xscenario 'Player throws a shape & result is displayed' do

  end
end
