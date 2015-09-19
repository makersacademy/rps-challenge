require 'spec_helper'

feature "Starting a new game"

  scenario "I am asked to enter my name" do
    visit '/'
    click link 'New Game'
    expect(page).to have_content "What's your name?"
  end
