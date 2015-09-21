require 'spec_helper'

feature 'Creates a game of Rock, Paper, Scissors' do

  it 'asks the user to enter their name' do
    visit '/'
    expect(page).to have_content "Please enter your name."
  end

  it 'clicking submit takes you to a new game of Rock, Paper, Scissors' do
    visit '/'
    fill_in 'name', with: 'Anthony'
    click_button('Submit')
    expect(page).to have_content "Welcome Anthony"
  end

  it 'choosing rock will take you to the results page' do
    visit '/game'
    select "Rock", from: "choice"
    click_button('Submit')
    expect(page).to have_content "The result is:"
  end

  it 'choosing paper will take you to the results page' do
    visit '/game'
    select "Paper", from: "choice"
    click_button('Submit')
    expect(page).to have_content "The result is:"
  end

  it 'choosing scissors will take you to the results page' do
    visit '/game'
    select "Scissors", from: "choice"
    click_button('Submit')
    expect(page).to have_content "The result is:"
  end

  it 'the computer choice will be displayed on the results page' do
    visit '/game'
    select "Scissors", from: "choice"
    click_button('Submit')
    expect(page).to have_content "Computer chose"
  end

end