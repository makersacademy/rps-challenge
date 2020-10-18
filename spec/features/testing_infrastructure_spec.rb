# require 'app.rb'

feature 'Home page' do
  scenario 'Welcomes and prompts to enter player name' do
    visit('/')
    expect(page).to have_content('For your chance')
  end

  # scenario 'can take a players name from a form, post them to /names which redirects to /play and are displayed on that page' do
  #   visit('/')
  #   fill_in(:player_name, with: 'Tim')
  #   visit('/play')
  #   expect(page).to have_content('Tim')
  # end

end