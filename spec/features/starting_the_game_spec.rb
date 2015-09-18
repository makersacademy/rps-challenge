require 'spec_helper'

feature 'Starting the game.' do

  scenario 'displays welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome, brave marketeer.'
  end

  scenario 'lets user enter name and remembers it' do
    visit '/'
    fill_in 'player_name', with: 'Steerpike'
    click_button 'GO'
    expect(page).to have_content 'Choose your weapon, Steerpike.'
  end

end
