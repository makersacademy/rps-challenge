require_relative 'web_helper'

feature 'home-page' do
  scenario 'allows player to enter name' do
    sign_in_and_play
    expect(page).to have_content('Welcome, FILIPE')
  end
end
