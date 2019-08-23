require 'capybara/rspec'
require 'spec_helper'

feature 'homepage' do

  scenario 'it should greet player and ask for name' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors Please enter your name player1:'
  end

  scenario 'it should redirect to play' do
    visit '/'
    fill_in :player1, with: 'Eloise'
    click_button 'Submit'
    expect(page).to have_content "Take your action Eloise"
  end
end
