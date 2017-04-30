require 'spec_helper'

feature 'Player name entry' do
  scenario 'Should offer player name form' do
    visit('/')
    expect(page).to have_content "enter your name"
  end
end
