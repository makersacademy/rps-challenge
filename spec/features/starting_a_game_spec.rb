require 'spec_helper'

feature 'Starting a new game' do

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content "What's your name?"
  end

  scenario 'I am welcomed by name after entering my name' do
    visit '/'
    fill_in 'name', :with => "Mick"
    click_button 'Enter'
    expect(page).to have_content "Welcome to Rock, Paper, Scissors Mick!"
  end

  scenario 'requires a valid name to be entered (i.e. not empty string)' do
    visit '/'
    fill_in 'name', :with => ""
    click_button 'Enter'
    expect(page).to have_content "What's your name?"
  end

end