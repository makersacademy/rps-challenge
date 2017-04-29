require './app'
require 'spec_helper'

feature do
  scenario 'There should be a header on the homepage' do
    visit('/')
    expect(page).to have_text("Let's play Rock, Paper, Scissors!")
  end

  scenario 'Putting your name in the form should work' do
    visit('/')
    fill_in('player', with: 'Foo')
    click_button('Start')
    expect(page).to have_text("It's time for Foo to play!")
  end

  scenario 'There should be a choice of three options after start' do
    visit('/')
    fill_in('player', with: 'Foo')
    click_button('Start')
    expect(page).to have_text("Rock")
  end

  scenario 'The choice should show up on the next page' do
    visit('/')
    fill_in('player', with: 'Foo')
    click_button('Start')
    choose('scissors')
    click_button('Play')
    expect(page).to have_text("scissors")
  end
end
