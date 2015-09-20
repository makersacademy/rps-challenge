require 'spec_helper'

feature 'Starting a new game' do

  scenario 'I am asked to enter my name when arriving on the homepage' do
    visit '/'
    expect(page).to have_content "What's your name?"
  end

  scenario 'The users name should display on the "Play Game" page' do
    visit '/'
    fill_in 'username', with: 'Matt'
    click_on 'Submit'
    expect(page).to have_content "Hi, Matt"
  end






#The result page should have a counter on it that keeps score of session..

#Have a play again button that redirects to the play page
end
