require 'spec_helper'

feature 'Starting a new game' do

  scenario 'asks user for their name' do
    visit '/'
    expect(page).to have_content('What is your name?')
  end

  scenario 'allows user to enter their name' do
    visit '/'
    fill_in('name', with: 'Bob')
    click_button("Let's play!")
    expect(page).to have_content('Welcome, Bob')
  end

  scenario 'does not allow name field to be submitted if blank' do
    visit '/'
    click_button("Let's play!")
    expect(page).to have_content ('What is your name?')
  end
end 

feature 'Playing a game' do
  
  scenario 'allows user to pick an option' do
    visit '/'
    fill_in('name', with: 'Bob')
    click_button("Let's play!")
    expect(page).to have_selector ('select')
  end

end