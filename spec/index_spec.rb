require 'capybara'
require 'register_and_play.rb'

feature 'homepage' do
  scenario 'goes to the homepage' do
    register_and_play()
    expect(page).to have_content("A and M")
  end
end