require 'spec_helper'

feature 'Enter names' do
  scenario 'Welcome page displays on load' do
    visit('/')
    expect(page).to have_content "Welcome to the arena!"
  end

  scenario 'Player can fill in their name' do
    sign_in
    expect(page).to have_content "vs."
  end
end
