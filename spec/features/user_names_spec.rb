require 'spec_helper'

feature 'Enter user name' do
  scenario 'User name is entered' do
    sign_in
    expect(page).to have_content 'Player 1 has logged in!'
  end
end