require 'capybara'
require_relative './web_helpers.rb'

feature 'Starting up the app' do
  scenario 'has content on the page' do
    visit '/'
    expect(page).to have_content 'ROCK, PAPER, POLITICS'
  end

  scenario 'takes information through successfully' do
    sign_in_and_play
    expect(page).to have_content 'Trump chose Rock'
  end
end
