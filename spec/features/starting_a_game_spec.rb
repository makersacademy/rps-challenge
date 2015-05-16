require 'spec_helper'

feature 'Starting a new game' do
  scenario 'Registering' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
    click_link 'Start Game'
    expect(page).to have_content "What is your name?"
  end
end