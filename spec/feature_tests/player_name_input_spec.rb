require 'spec_helper'

feature 'Enter play name' do
  scenario 'New player enters their name' do
    sign_in_and_play
    expect(page).to have_content "Felix challenges Edward to a game of ROCK, PAPER, SISSORS!"
  end
end
