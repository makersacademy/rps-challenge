require './app/app.rb'
require 'spec_helper'
require 'capybara/rspec'
feature 'Computer will respond with a choice' do
  scenario 'computer will respond with ROCK' do
    srand(7)
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    click_button 'ROCK'
    expect(page).to have_content("Computer's choice: ROCK")
  end

  scenario 'computer will respond with PAPER' do
    srand(1)
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    click_button 'ROCK'
    expect(page).to have_content("Computer's choice: PAPER")
  end

  scenario 'computer will respond with SCISSORS' do
    srand(3)
    visit '/'
    fill_in :name, with: 'Stephan'
    click_button 'submit'
    click_button 'ROCK'
    expect(page).to have_content("Computer's choice: SCISSORS")
  end
end