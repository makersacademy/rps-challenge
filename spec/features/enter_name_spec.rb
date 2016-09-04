require 'spec_helper'

feature 'entering names' do

  scenario 'a player submits their name' do
    sign_in_and_play_single
    expect(page).to have_content('James has begun a game of Rock, Paper, Scissors!')
  end
end
