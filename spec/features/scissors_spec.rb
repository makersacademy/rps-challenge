require 'spec_helper'

feature "Paper" do
  scenario "Expect the player to be able to select SCISSORS" do
    sign_in_and_play
    @game.stub(:player_2_move) {:scissors}
    click_button("SCISSORS")
    expect(page).to have_content("Both picked scissors - DRAW")
  end
end
