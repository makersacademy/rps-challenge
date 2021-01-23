require './spec/spec_helper.rb'
require 'capybara/rspec'

feature 'Visit app homepage' do
  it 'Displays a welcome message' do
    visit('/')
    expect(page).to have_content 'Would you like to play ROCK, PAPER, SCISSORS?'
  end
end
