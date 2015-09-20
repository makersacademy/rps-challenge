require 'spec_helper'
require 'game'

feature 'Homepage' do

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content("What's your name?")
  end
  scenario 'There is a button to submit my name' do
    visit '/'
    expect(page).to have_selector("input[type='submit'][value='Submit']")
  end
end

feature 'Account' do

  scenario 'Shows username' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    expect(page).to have_content("Welcome to your account, Harry")
  end
  scenario 'Has option for one player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    expect(page).to have_selector("input[type='radio'][value='one-player']")
  end
  scenario 'Has option for two player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    expect(page).to have_selector("input[type='radio'][value='two-player']")
  end
end

feature 'Game' do

  scenario 'Can make selections in play one player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    page.choose('one-player')
    click_button 'Submit'
    expect(page).to have_selector("input[type='submit'][value='Selection']")
  end
end
