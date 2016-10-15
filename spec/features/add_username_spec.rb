require 'spec_helper.rb'
# require './web_helpers.rb'

feature "Player arrives to the root page" do
scenario "Sign-in form is displayed" do
  visit ('/')
  expect(page).to have_content('Please enter your username:')
end

scenario "Player is redirected to the game page " do
  sign_in
  expect(page).to have_content("Get ready to play!")
  end
end
