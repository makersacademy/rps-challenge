require 'spec_helper'

feature "Paper" do
  scenario "Expect the player to be able to select ROCK" do
    sign_in_and_play
    @game.stub(:player_2_move) {:rock}
    click_button("ROCK")
    expect(page).to have_content("Both picked rock - DRAW")
  end
end
