require 'spec_helper'
require 'rack'
require 'rps_web.rb'

feature 'playing rock paper scissors' do

  scenario 'player is asked to enter their name' do
    visit '/'
    fill_in 'name', with: 'Emily'
    click_button 'New Game'
    expect(page).to have_content 'Hi, Emily!'
  end

  scenario 'redirected if name is not entered' do
    visit '/'
    click_button 'New Game'
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'player is given 3 moves to choose from' do
    visit '/new_game'
    expect(page).to have_select('move')
  end

  scenario 'player chooses move and is taken to result page' do
    visit '/new_game'
    select 'Rock', from: 'move'
    click_button 'Throw!'
    expect(page).to have_content 'You chose rock!'
  end

  scenario 'player is asked whether they want to try again' do
    visit '/new_game'
    select 'Rock', from: 'move'
    click_button 'Throw!'
    expect(page).to have_content 'Try again?'
  end

end
