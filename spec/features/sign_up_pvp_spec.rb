require 'spec_helper'
require 'rack/test'

describe 'index page' do
  include Rack::Test::Methods

  scenario 'home screen displays welcome message' do
    sign_in_pvp
    expect(page).to have_content 'Choose your weapon, Tom!'
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Lizard'
    expect(page).to have_button 'Spock'
  end
end
