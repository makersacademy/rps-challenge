require 'spec_helper'


feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do 
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'It can receive a name' do
    visit '/name'
    fill_in 'name', with: 'Elin'
    click_button('Start Game')
    expect(page).to have_content 'Choose your weapon'
  end
end
