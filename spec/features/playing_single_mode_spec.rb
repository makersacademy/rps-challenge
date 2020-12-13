require 'spec_helper'

feature "single player mode" do
  scenario "player can choose which mode to play" do
    visit '/'
    expect(page).to have_content('Single Player')
    expect(page).to have_content('Multi Player')
  end

  scenario "player can choose single player mode" do
    visit '/'
    click_button('single-mode')
    expect(page).to have_content('Single Player Mode')
  end

  scenario "player can enter their name" do
    visit '/'
    click_button('single-mode')
    fill_in 'name', with: 'Luna'
    click_on('Enter')
    expect(page).to have_content('Hello, Luna!')
  end

  scenario 'player can choose an option' do
    visit '/'
    click_button('single-mode')
    fill_in 'name', with: 'Luna'
    click_on('Enter')
    click_on('rock')
    expect(page).to have_content('You played')
  end

  scenario 'player can play again' do
    visit '/'
    click_button('single-mode')
    fill_in 'name', with: 'Luna'
    click_on('Enter')
    click_on('rock')
    click_button('play-again')
    expect(page).to have_content("Yes! Let's keep going!")
  end

  scenario 'player can go back to main page' do
    visit '/'
    click_button('single-mode')
    fill_in 'name', with: 'Luna'
    click_on('Enter')
    click_on('rock')
    click_button('main-page')
    expect(page).to have_content("Welcome!")
  end
end