require 'spec_helper'
require 'game'

feature 'Homepage' do

  scenario 'I am asked to enter my name' do
    visit '/'
    expect(page).to have_content("Please enter your name to begin playing")
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
    expect(page).to have_selector("input[type='submit'][value='one-player']")
  end
  scenario 'Has option for two player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    expect(page).to have_selector("input[type='submit'][value='two-player']")
  end
  scenario 'Has link to the rules' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    expect(page).to have_link("click here")
  end
end

feature 'Game' do

  scenario 'Can make selections in one player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    click_button 'one-player'
    expect(page).to have_selector("input[type='submit'][value='Selection']")
  end
  scenario 'Can make selections and play one player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    click_button 'one-player'
    find('#selection').find(:xpath, 'option[2]').select_option
    click_button 'Selection'
    expect(page).to have_content(@result)
  end
  scenario 'Can make selections in two player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    click_button 'two-player'
    expect(page).to have_selector("input[type='submit'][value='Selection']")
  end
  scenario 'Can make selections and play two player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    click_button 'two-player'
    find('#selection').find(:xpath, 'option[1]').select_option
    click_button 'Selection'
    find('#selection2').find(:xpath, 'option[2]').select_option
    click_button 'Selection'
    expect(page).to have_content(@result)
  end
  scenario 'Can play again after one player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    click_button 'one-player'
    find('#selection').find(:xpath, 'option[2]').select_option
    click_button 'Selection'
    expect(page).to have_link('Play Again')
  end
  scenario 'Can play again after two player game' do
    visit '/'
    fill_in 'name', with: 'Harry'
    click_button 'Submit'
    click_button 'two-player'
    find('#selection').find(:xpath, 'option[2]').select_option
    click_button 'Selection'
    find('#selection2').find(:xpath, 'option[2]').select_option
    click_button 'Selection'
    expect(page).to have_link('Play Again')
  end
end
