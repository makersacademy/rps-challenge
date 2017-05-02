require_relative '../../app'
require 'capybara'
require 'capybara/rspec'
require 'spec_helper'

feature RPS do
  it 'has a banner when the homescreen is loaded' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors!'
  end

  it 'allows the player to enter their name' do
    visit '/'
    fill_in 'player_name', with: 'Tim'
    click_button 'Submit'
    expect(page).to have_content 'Please choose Rock Paper or Scissors'
  end

  it 'allows the player to enter their name' do
    visit '/'
    fill_in 'player_name', with: 'Tim'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You chose rock, Tim!'
  end
end
