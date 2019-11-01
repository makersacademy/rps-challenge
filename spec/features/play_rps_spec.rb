require "./spec/features/web_helpers"

feature "Select rock, paper, or scissors" do
  subject(:player_1) { Player.new("Bowie") }
  subject(:game) { Game.new(player_1, Player.new) }

  scenario "#names entered" do
    log_names
    expect(page).to have_content "Bowie vs. Computer"
  end

  scenario "#play rock and lose" do
  end
end
