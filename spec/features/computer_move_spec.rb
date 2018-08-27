feature "Computer chooses move" do
  scenario "Computer's move is displayed" do
    allow_any_instance_of(Game).to receive(:computer_move).and_return("ROCK")
    sign_in_and_play
    player_move
    expect(page).to have_content "The Computer played ROCK"
  end
end
