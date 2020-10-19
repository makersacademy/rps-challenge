# require 'app.rb'
require 'spec_helper'
require_relative 'web_helpers'

feature 'Home page' do
  scenario 'Welcomes and prompts to enter player name' do
    visit '/'
    expect(page).to have_content 'famous game'
  end

  # scenario 'register your name' do
  #   visit '/'
  #   fill_in 'name', with: 'Tim'
  #   expect(page).to have_content 'Tim'
  # end
end

feature 'playing the game' do
  
  before do
    visit '/'
    fill_in 'name', with: 'Tim'
    click_button('Submit')
  end

  scenario 'to see the weapon options' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
# feature 'Attacking' do

#   scenario 'user has inputted a weapon' do
#     register_and_play
#     expect(page).to have_button ('Rock')
#   end

# end