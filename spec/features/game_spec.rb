require_relative 'helper'
require "capybara/rspec"
require_relative "../../app"

Capybara.app = RPS

feature 'Enter choice' do
  scenario 'player one enters rock, player two enters scissors' do
    enter_names
    fill_in :choice1, with: 'rock'
    click_button 'Submit'
    fill_in :choice2, with: 'scissors'
    click_button 'Submit'
    expect(page).to have_content 'Jordan wins!'
  end

  scenario 'player one enters scissors, player two enters rock' do
    enter_names
    fill_in :choice1, with: 'scissors'
    click_button 'Submit'
    fill_in :choice2, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Shay wins!'
  end

  scenario 'player one enters scissors, player two enters paper' do
    enter_names
    fill_in :choice1, with: 'scissors'
    click_button 'Submit'
    fill_in :choice2, with: 'paper'
    click_button 'Submit'
    expect(page).to have_content 'Jordan wins!'
  end

  scenario 'player one enters paper, player two enters scissors' do
    enter_names
    fill_in :choice1, with: 'paper'
    click_button 'Submit'
    fill_in :choice2, with: 'scissors'
    click_button 'Submit'
    expect(page).to have_content 'Shay wins!'
  end

  scenario 'player one enters paper, player two enters rock' do
    enter_names
    fill_in :choice1, with: 'paper'
    click_button 'Submit'
    fill_in :choice2, with: 'rock'
    click_button 'Submit'
    expect(page).to have_content 'Jordan wins!'
  end

  scenario 'player one enters rock, player two enters paper' do
    enter_names
    fill_in :choice1, with: 'rock'
    click_button 'Submit'
    fill_in :choice2, with: 'paper'
    click_button 'Submit'
    expect(page).to have_content 'Shay wins!'
  end
end
