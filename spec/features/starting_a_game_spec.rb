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
    click_button('Submit')
    expect(page).to have_content 'Welcome Elin'
  end

  scenario 'It can take me to the file that contains the game' do
    visit '/name'
    fill_in 'name', with: 'Elin'
    click_button('Submit')
    click_link('Start Game')
    expect(page).to have_selector('div#play.game')
  end

end
