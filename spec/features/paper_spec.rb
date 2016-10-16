require 'spec_helper'

feature "Paper" do
  scenario "Expect the player to be able to select PAPER" do
    sign_in_and_play
    @game.stub(:player_2_move) {:paper}
    click_button("PAPER")
    expect(page).to have_content("Both picked paper - DRAW")
  end
end
