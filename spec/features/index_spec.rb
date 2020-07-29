require 'spec_helper'

feature 'Homepage' do
  scenario 'Navigate to homepage' do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!\nChoose Singleplayer or Multiplayer to begin:")
  end
end
