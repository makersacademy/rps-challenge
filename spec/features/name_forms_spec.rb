require 'spec_helper'
require '././rps.rb'

RSpec.feature 'entering player name', :type => :feature do
  scenario 'users enter their name' do
    sign_in_and_play
    expect(page).to have_text('What weapon do you choose, Frodo?')      
  end
end
