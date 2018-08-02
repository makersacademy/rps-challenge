# require 'spec_helper.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'registering name' do
  # the marketeer should be able to enter their name before the game
  scenario 'register and see name' do
    visit('/')
    fill_in :player_name, with: 'Kirt'
    click_button ('Submit')
    expect(page).to have_content('Kirt')
  end
end
