require 'spec_helper.rb'
require_relative './helpers.rb'

feature 'New User arrives at root page' do
  scenario 'Displays form on the home page' do
    visit('/')
    expect(find_field('player_name').value).to eq 'Enter Your Name'
  end

  scenario 'Redirects to game page with welcome message' do
    single_player_sign_in_helper
    expect(page).to have_content("Reginald")
  end
end
