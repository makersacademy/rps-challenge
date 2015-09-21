require 'spec_helper'

feature 'Starting a new game' do
  scenario 'The homepage takes you to new player page' do
    visit '/'
    click_link 'Play Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'When I submit my name' do
    visit '/new_player'
    fill_in 'name', with: 'Lucy'
    click_button 'submit'
    expect(page).to have_content "Hello, Lucy!"
  end

  scenario "If I don't submit name" do
    visit '/new_player'
    fill_in 'name', with: ''
    click_button 'submit'
    expect(page).to_not have_content "Hello, Lucy!"
  end

  scenario "Once name has been submitted, player can select hand" do
    visit '/game'
    expect(page).to have_content "Choose your weapon:"
  end

  scenario "Once player has chosen hand" do
    visit '/game'
    choose 'choice', match: :first
    click_button 'submit'
    expect(page).to have_content "Who won?"
  end

  scenario "Player can play again" do
    visit '/game'
    choose 'choice', match: :first
    click_button 'submit'
    click_link 'Play again'
    expect(page).to have_content "Choose your weapon:"
  end

end
