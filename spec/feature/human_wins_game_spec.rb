feature "playing game" do
  scenario "player goes rock, computer goes scissors" do
    create_game
    fill_in :player_choice, with: "rock"
    @game.player2.pick_action("scissors")
    expect(page).to have_content "The computer chose scissors. You win!"
  end
end