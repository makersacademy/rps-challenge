require 'spec_helper'
require './rps'

RSpec.feature 'Route /', type: :feature do
  before(:each) { visit '/' }

  scenario 'asks for user name' do
    expect(page).to have_content('What\'s your name?')
  end

  scenario 'user enters their name' do
    sign_in_and_play
    expect(page).to have_content('What weapon do you choose')
  end
end
