require 'spec_helper'

feature 'allow player to play again' do
  scenario 'choosing rock button' do
    sign_in_and_play
    choose_and_play_again
    expect(page).to have_content "it's time to choose.."
  end
end
