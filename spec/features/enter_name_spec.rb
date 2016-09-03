require 'spec_helper'

feature 'entering names' do

  scenario 'a player submits their name' do
    visit ('/')
    fill_in(:player, with: 'James')
    click_button 'Submit'
    expect(page).to have_content('James has begun a game of Rock, Paper, Scissors!')
  end
end
