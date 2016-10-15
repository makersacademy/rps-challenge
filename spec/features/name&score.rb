require 'spec_helper'
require 'app'
require 'views/game'

feature 'Enter Player 1 Name' do

  before do
    visit('/who')
    fill_in 'player1', with: 'Louix NacFaffery'
    click_button 'Play!'
  end

  scenario 'visiting web page' do
  expect(page).to have_content 'Louix NacFaffery'
  end

  scenario 'tally of games won' do
  expect(page).to have_content 'Louix NacFaffery - Score:'
  end
