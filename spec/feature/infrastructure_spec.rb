# require 'capybara/rspec'
require_relative '../../lib/app'

RSpec.feature 'testing infrastructure' do
  scenario 'can run app and load index' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock/Paper/Scissors'
  end

  scenario 'displays player names' do
    sign_up_players

    expect(page).to have_content 'Leonard vs. Sheldon'
  end

  # scenario 'displays player types' do
  #   sign_up_players
  #
  #   within('#player_1') {
  #     expect(page).to have_content 'Human'
  #   }
  #
  #   within('#player_2') {
  #     expect(page).to have_content 'Computer'
  #   }
  #
  # end
end
