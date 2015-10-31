require 'spec_helper'

feature 'Enter user name' do
  scenario 'User name is entered' do
    sign_in
    expect(page).to have_content 'Hi, Player 1!'
  end
end