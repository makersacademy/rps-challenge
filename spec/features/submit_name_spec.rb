# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

require 'capybara/rspec'

feature 'enter name' do
  scenario 'the player can submit their name and be redirected to a welcome page' do
    visit '/'
    fill_in :player_1_name, with: 'James'
    click_button 'Submit'
    expect(page).to have_content 'Hello James'
  end
end