require 'spec_helper'

feature 'Play Rock, Paper, Scissors' do
  scenario 'Player chooses rock' do
    visit('/')
    fill_in :username, with: 'Aaron'
    click_button 'Submit'
    click_button 'rock'
  end

  scenario 'Player chooses paper' do
    visit('/')
    fill_in :username, with: 'Aaron'
    click_button 'Submit'
    click_button 'paper'
  end

  scenario 'Player chooses scissors' do
    visit('/')
    fill_in :username, with: 'Aaron'
    click_button 'Submit'
    click_button 'scissors'
  end
end
