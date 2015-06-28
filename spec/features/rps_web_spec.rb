require 'spec_helper'

feature 'Starting a new gmae' do
  scenario 'It can receive a name' do
    visit '/'
    fill_in 'name', with: 'Kirsten'
    click_button('Submit')
    expect(page).to have_content "Welcome, Kirsten!"
  end

  scenario 'It can ask the player to choose rock, paper or scissors' do
    visit '/'
    fill_in 'name', with: 'Kirsten'
    click_button('Submit')
    click_link("PLAY!")
    expect(page).to have_content "Choose: Rock, Paper or Scissors?"
  end
end
