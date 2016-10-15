require 'spec_helper'
require 'app'
require 'views/game'


feature 'Make selection' do

  before do
    visit('/who')
    fill_in "player1", with: 'Susan Sarandon'
    click_button 'Play!'
  end

  scenario 'page displays rock selection buttons' do
    expect(page).to have_button 'Rock'
  end

  scenario 'page displays paper selection buttons' do
    expect(page).to have_button 'Paper'
  end

  scenario 'page displays scissors selection buttons' do
    expect(page).to have_button 'Scissors'
  end
end
