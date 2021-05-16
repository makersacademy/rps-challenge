require 'capybara/rspec'
require_relative '../../app.rb'

Capybara.app = RPSApp

feature 'play RPS' do
  scenario 'user plays rock-paper-scissors' do
    visit '/'
    fill_in('name', with: 'Alice')
    click_button('submit')
    srand(23525)

    expect(page).to have_selector(:link_or_button, 'rock')
    expect(page).to have_selector(:link_or_button, 'paper')
    expect(page).to have_selector(:link_or_button, 'scissors')

    click_button('rock')

    expect(page).to have_text('You win! Rock beats scissors.')
  end
end

