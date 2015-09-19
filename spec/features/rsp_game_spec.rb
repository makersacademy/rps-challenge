require 'spec_helper'

feature 'Starting a new game' do
  scenario 'The homepage takes you to new player page' do
    visit '/'
    click_link 'NEW GAME'
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



end
