require 'spec_helper'

feature 'Starting a new game' do

  scenario "asking for the user's name" do
  visit '/'
  expect(page).to have_content "What's your name?"
end

  scenario "user can login with his name" do
  visit '/'
  fill_in 'name', with: 'Massi'
  click_button ('Submit')
  expect(page).to have_content "Welcome Massi, have a look to the rules and let's star playing!"
end


end

