require 'spec_helper'

feature 'starting the game' do
  scenario 'asking the name' do
    visit '/'
    fill_in "name", with: 'Gerard'
    click_button "log in"
    expect(page).to have_content 'Hello Gerard' 
  end

  scenario 'game set up' do
    visit '/name'
    click_button 'one player game'
    expect(page).to have_content 'choose'
  end
end