require 'spec_helper'
require '././rps.rb'

RSpec.feature 'entering player name', :type => :feature do
  scenario 'users enter their name' do
    sign_in_and_play
    expect(page).to have_text('Frodo vs Computer')
  end
end
