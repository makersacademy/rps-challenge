require 'spec_helper'

feature "player enters move and sees move confirmed" do
  scenario "entering move" do
    register_and_play
    fill_in('move', with 'Rock')
    expect(page).to have_content 'player_name chose Rock!'
  end
end
