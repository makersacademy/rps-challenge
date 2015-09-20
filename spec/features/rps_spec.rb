require 'spec_helper'

feature 'Creates a game of Rock, Paper, Scissors' do

  it 'asks the user to enter their name' do
    visit '/'
    expect(page).to have_content "Please enter your name."
  end

  it 'clicking submit takes you to a new game of Rock, Paper, Scissors' do
    visit '/'
    fill_in 'name', :with => 'Anthony'
    click_button('Submit')
    expect(page).to have_content "Welcome Anthony"
  end

end