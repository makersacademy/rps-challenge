require 'spec_helper'

feature 'Starting a new game' do
  scenario 'The user asked to enter a name' do
    visit '/'
    click_link "New Game"
    expect(page).to have_content "Hello awesome marketeer, what's your name?"
  end

  scenario ''
end