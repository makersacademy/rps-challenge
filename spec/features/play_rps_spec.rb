require "./spec/features/web_helpers"

feature "Select rock, paper, or scissors" do
  #   let(:player_1) { double(:player, name: "Bowie") }

  scenario "#names entered" do
    log_names
    expect(page).to have_content "Player 1: Bowie vs. Player 2: Computer"
  end
end
