require 'spec_helper'

feature 'Welcome message' do
  scenario 'welcomes player to play game'do
    visit ('/')
    expect(page).to have_content ('Welcome to Spooky Rock Paper Scissor game!')
  end
end
