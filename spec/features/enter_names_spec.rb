require 'capybara/rspec'
require_relative '../../app'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Player is prompted to enter their name' do
  scenario 'allows a name to be filled in and submitted' do
    names = %w(Alex Susanna Jim Bob)
    @player_name = names.sample
    visit ('/')
    fill_in('player_name', with: @player_name)
    click_button('Play')
    expect(page).to have_content("#{@player_name}, choose your weapon")
  end
end
