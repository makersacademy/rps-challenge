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

  scenario 'can change country to France' do
    visit '/'
    click_button 'Play for France'
    expect(page).to have_content 'Macron'
  end

  scenario 'can change country to France' do
    visit '/'
    click_button 'Play for the UK'
    expect(page).to have_content 'Corbyn'
  end

  scenario 'can change country back to USA' do
    visit '/french'
    click_button 'Play for America'
    expect(page).to have_content 'Trump'
  end
end
