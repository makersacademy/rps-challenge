# require 'capybara/rspec'
require_relative '../../lib/app'

RSpec.feature 'testing infrastructure' do
  scenario 'can run app and load index' do
    visit '/'
    expect(page).to have_content 'Welcome'
  end

  scenario 'displays player names' do
    sign_up_players
    expect(page).to have_content('Austin')
  end

  scenario 'displays player type human' do
    sign_up_players

    within('.player-box') {
      expect(page).to have_content 'Human'
    }
  end

  scenario 'displays player type computer' do
    sign_up_players_one_computer

    within('.player-box') {
      expect(page).to have_content 'Computer'
    }
  end
end
