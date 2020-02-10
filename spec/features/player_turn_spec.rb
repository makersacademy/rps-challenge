require 'spec_helper'

feature 'player 1 turn' do
  scenario 'player 1 chooses his action' do
    sign_in_and_play_two_players
    click_button("Rock")
    expect(page).to have_content("Tango has made his choice")
  end
end
