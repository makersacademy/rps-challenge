require 'spec_helper'

feature 'testing results' do
  scenario 'shows results of two player' do
    sign_in_and_play_two_players
    click_button("Rock")
    click_button("Paper")
    expect(page).to have_content("Paper beats Rock")
  end
end
