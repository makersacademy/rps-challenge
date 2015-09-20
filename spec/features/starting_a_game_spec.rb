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

end

feature 'Playing game' do

  scenario 'The user should select one of the three options' do
    visit '/'
    fill_in 'username', with: 'Matt'
    click_on 'Submit'
    expect(page).to have_content "Please choose your option"
  end

  scenario 'The user should be redirected to a page that tells result of that round' do
    visit '/'
    fill_in 'username', with: 'Matt'
    visit '/play-game'
    click_on "Rock"
    visit '/result'
    expect(page).to have_content 'And the winner is..'

    #This may be a vacuous test - would ideally like to click on Rock, and then have     expect(current_path).to eq('/result') to test that the redirect has happened but cant get this to work
  end


#The result page should have a counter on it that keeps score of session..

#Have a play again button that redirects to the play page
end
