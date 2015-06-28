require 'spec_helper'

feature 'Starting a new game' do

  scenario "asking for the user's name" do
  visit '/'
  expect(page).to have_content "Ready to play? Digit yor name and press enter!"
end

  scenario "user can login with his name" do
  visit '/'
  fill_in 'name', with: 'Massi'
  click_button ('Submit')
  expect(page).to have_content "Welcome Massi, Sheldon has challenged you to a game"
end


end

