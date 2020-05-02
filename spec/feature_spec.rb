require 'spec_helper'

feature 'user can register for game' do
  scenario 'user enters their name and clicks submit' do
    visit('/')
    fill_in :player, with: 'Lizzie'
    click_button 'Play'
    expect(page).to have_content 'Rock, Paper or Scissors?'
  end
end
