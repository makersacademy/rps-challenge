require 'capybara/rspec'
require_relative '../../app'
require_relative '../helpers/register'

Capybara.app = RPSApp

feature 'play RPS' do
  scenario 'user plays rock-paper-scissors' do
    register('Alice')
    srand(23_525)

    expect(page).to have_selector(:link_or_button, 'rock')
    expect(page).to have_selector(:link_or_button, 'paper')
    expect(page).to have_selector(:link_or_button, 'scissors')

    click_button('rock')

    expect(page).to have_text('You win! Rock beats scissors.')
  end

  scenario 'user plays rock-paper-scissors multiple times' do
    register('Nushi')
    srand(23_525)
    
    click_button('rock')
    click_link('Play again?')
    click_button('rock')

    expect(page).to have_text('Sorry, you lose. Rock loses against paper.')
  end
end
