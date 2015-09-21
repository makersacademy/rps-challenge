require 'spec_helper'
require 'rack'

feature 'Playing a game of Rock, Paper, Scissors' do

  scenario 'I can enter my name' do
    visit '/'
    fill_in 'name', with: 'Aaron'
    click_button 'rock'
    expect(page).to have_content 'Aaron'
  end

  scenario 'There is a rock button that allows player to choose rock' do
    visit '/'
    fill_in 'name', with: 'Aaron'
    click_button 'rock'
    expect(page).to have_content 'Rock'
  end

  scenario 'There is a paper button that allows player to choose rock' do
    visit '/'
    fill_in 'name', with: 'Aaron'
    click_button 'paper'
    expect(page).to have_content 'Paper'
  end

  scenario 'There is a scissors button that allows player to choose rock' do
    visit '/'
    fill_in 'name', with: 'Aaron'
    click_button 'scissors'
    expect(page).to have_content 'Scissors'
  end
end
