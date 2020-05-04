require 'spec_helper'

feature 'user can register for game' do
  scenario 'user enters their name and clicks submit' do
    visit('/')
    fill_in :player, with: 'Lizzie'
    click_button 'Play'
    expect(page).to have_content 'Welcome! Choose an option below:'
  end
end

feature 'user chooses between rock paper or scissors' do
  scenario 'user clicks on one of the above' do
    visit('/')
    game = Game.new
    fill_in :player, with: 'Lizzie'
    click_button 'Play'
    click_button 'ROCK'
    allow(game).to receive(:result) { 'ROCK' }
    expect(page).to have_content 'Your Selection'
  end
end

feature 'user chooses between rock paper or scissors' do
  scenario 'user clicks on one of the above' do
    visit('/')
    game = Game.new
    fill_in :player, with: 'Lizzie'
    click_button 'Play'
    click_button 'ROCK'
    allow(game).to receive(:result) { 'SCISSORS' }
    expect(page).to have_content 'Your Selection'
  end
end

feature 'user chooses between rock paper or scissors' do
  scenario 'user clicks on one of the above' do
    visit('/')
    game = Game.new
    fill_in :player, with: 'Lizzie'
    click_button 'Play'
    click_button 'ROCK'
    allow(game).to receive(:result) { 'PAPER' }
    expect(page).to have_content 'Your Selection'
  end
end
