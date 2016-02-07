require './spec/spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'registering' do
  scenario 'enter and display name' do
    visit('/')
    fill_in(:player_name, with: 'Marketeer')
    click_button 'Submit'
    expect(page).to have_content 'Marketeer'
  end
end