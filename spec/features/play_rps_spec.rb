require 'capybara/rspec'
require_relative '../../app.rb'

Capybara.app = RPSApp

feature 'play RPS' do
  scenario 'user plays rock-paper-scissors' do
    visit '/'
    fill_in('name', with: 'Alice')
    click_button('submit')

    expect(page).to have_text('rock')
    expect(page).to have_text('paper')
    expect(page).to have_text('scissors')

    allow(game).to receive_message(:outcome).and_return('win')
    allow(game).to receive_message(:opponent).and_return('scissors')

    click_button('rock')

    expect(page).to have_text('You win! Rock beats Scissors.')
  end
end

