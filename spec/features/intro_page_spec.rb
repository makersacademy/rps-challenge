require 'spec_helper'

feature 'introducing page' do

  scenario 'there is the title of the game on the intro page' do
    visit '/'
    expect(page).to have_content "Welcome to Rock Paper Scissors"
  end

  scenario 'asks player to input their name' do
    visit '/'
    expect(page).to have_content "Please enter your name:"
  end
end
