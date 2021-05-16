require 'capybara/rspec'
require_relative '../../app.rb'

Capybara.app = RPSApp

feature 'play RPS' do
  scenario 'user plays rock-paper-scissors' do
    pending
    visit '/'
    fill_in('name', with: 'Alice')
    click_button('submit')

    expect(page).to have_selector(:link_or_button, 'rock')
    expect(page).to have_selector(:link_or_button, 'paper')
    expect(page).to have_selector(:link_or_button, 'scissors')

    allow(game).to receive_message(:outcome).and_return('win')
    allow(game).to receive_message(:opponent).and_return('scissors')

    click_button('rock')

    expect(page).to have_text('You win! Rock beats Scissors.')
  end
end

