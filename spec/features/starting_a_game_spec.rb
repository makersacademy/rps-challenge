require 'spec_helper'

feature 'Starting a new game' do

  scenario 'I am asked to enter my name when arriving on the homepage' do
    visit '/'
    # click_link 'New Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'The users name should display on the "Play Game" page' do
    visit '/'
    fill_in 'username', with: 'Matt'
    click_on 'Submit'
    expect(page).to have_content "Hi, Matt"

  end
end
