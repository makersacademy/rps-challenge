require 'spec_helper'
require './app'

RSpec.feature 'Testing homepage' do
  scenario 'have game title' do
    visit '/'
    expect(page).to have_content 'ROCK PAPER SCISSORS LIZARD SPOCK!'
  end
end
