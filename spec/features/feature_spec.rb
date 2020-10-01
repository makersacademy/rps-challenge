require './spec/spec_helper.rb'
require 'capybara/rspec'

feature 'Visit app homepage' do
  it 'Displays a welcome message' do
    visit('/')
    expect(page).to have_content 'Welcome player! Are you ready for a good old game of ROCK, PAPER, SCISSORS?'
  end
end
