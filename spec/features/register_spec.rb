require 'spec_helper.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Register' do
  scenario 'See the registered name' do
    visit('/')
    fill_in('name', with: 'Varvara')
    click_button('Submit')
    expect(page). to have_content('Varvara')
  end
end
# Functionality
# - the marketeer should be able to enter their name before the game
# - the marketeer will be presented the choices (rock, paper and scissors)
# - the marketeer can choose one option
# - the game will choose a random option
# - a winner will be declared

# Second User Story
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
