require 'spec_helper'

feature 'ENTER NAMES' do
  scenario '-> lets the human player enter his name and see it on-screen' do
    visit('/')
    fill_in :name, with: 'Marcus'
    click_button 'Submit'
    expect(page).to have_content 'Player name: Marcus'
  end
end

feature 'Choosing R/P/S' do
  scenario 'let\'s the player choose his weapon and confirm' do
    visit('/')
    fill_in :name, with: 'Marcus'
    click_button 'Submit'
    click_button 'Start game'
    choose('choice', :match => :first)
    click_button('submit')
    expect(page).to have_content 'Marcus chose rock'
  end
end
