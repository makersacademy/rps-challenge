feature "Once the player has signed in" do
  scenario "They can choose a move" do
    sign_in_one_player
    possible_options = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    expect(page).to have_select("possible_moves", :options => possible_options)
  end
end
