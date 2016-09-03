require 'spec_helper'

feature 'Enter name' do

  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have content 'Welcome Erce! Are you ready for a game?'
  end
end
