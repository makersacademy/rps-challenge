require 'spec_helper'

feature 'start screen' do
  scenario 'correctly displays text' do
    visit('/')
    expect(page).to have_content 'Welcome to: "Poker Without the Cards"'
  end
end
