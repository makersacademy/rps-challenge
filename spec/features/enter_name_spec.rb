require 'spec_helper'

feature 'Enter name' do
  scenario 'entering player name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Cleopatra!'
  end
end
