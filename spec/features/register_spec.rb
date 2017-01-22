require 'spec_helper'

feature 'Player registration' do
  scenario 'player can register to play RPS' do
    sign_in_and_play
    expect(page).to have_content 'Dave, you are now registered'
  end
end
