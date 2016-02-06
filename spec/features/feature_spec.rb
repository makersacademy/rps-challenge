require 'spec_helper'
require 'web_helpers'

feature 'US1 - Player can register their name' do
  scenario 'Returns the user name that the player inputs' do
    visual_test
    sign_in_and_play
    expect(page).to have_content 'Welcome Bob, are you ready to play RPS?'
  end
end