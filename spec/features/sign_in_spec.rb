require './app.rb'
require_relative 'web_helpers'

feature 'Enter a name' do
  scenario "You're able to save your name" do
    sign_in
    expect(page).to have_content "Hi, Agata!"
  end
end
