require 'spec_helper'
require './app'

RSpec.feature 'Testing homepage' do
  scenario 'have game title' do
    visit '/'
    expect(page).to have_content 'ROCK PAPER SCISSORS LIZARD SPOCK!'
  end

  scenario 'user can choose 1 player' do
    visit '/'
    expect(page).to have_button('1 player')
  end

  scenario 'user can choose 2 players' do
    visit '/'
    expect(page).to have_button('2 players')
  end
end
