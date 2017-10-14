# require 'capybara/rspec'
require_relative '../../lib/app'

RSpec.feature 'testing infrastructure' do
  scenario 'can run app and load index' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock/Paper/Scissors'
  end

  scenario 'can sign up' do
    sign_up_players
    expect(page).to have_content 'Leonard vs. Sheldon'
  end
end
