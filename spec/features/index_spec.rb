require 'spec_helper'
require '././rps.rb'

RSpec.feature 'entering player name', :type => :feature do
  scenario 'users enter their name' do
    sign_in_and_play 
  end
end
