require 'spec_helper'

feature 'Rock Paper Scissors' do

  scenario 'Name field exists' do
    visit '/'
    expect(page).to have_content("Enter your name here:")
  end

  scenario 'Page addresses you by name' do
    visit '/'
    fill_in('name', with: 'James')
    click_button('Submit')
    expect(page).to have_content("James, you are player 1. Click begin to start playing rock paper scissors")
  end

  scenario 'Clicking begin' do
    visit '/'
    fill_in('name', with: 'James')
    click_button('Submit')
    click_link('Begin')
    expect(page).to have_content('make your decision')
  end

  scenario 'Making decision' do
    visit '/'
    fill_in('name', with: 'James')
    click_button('Submit')
    click_link('Begin')
    click_button('Rock, paper, scissors!')
    expect(page).to have_content('When your opponent has made their decision')
    end

  xscenario 'verdict' do
    visit '/'
    fill_in('name', with: 'James')
    click_button('Submit')
    click_link('Begin')
    click_button('Rock, paper, scissors!')
    click_link('here')
    expect(page).to have_content('Player')
  end



end