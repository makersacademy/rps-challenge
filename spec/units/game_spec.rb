require "game"
describe Game do
  let(:player_1_double) { double name: "soroush", movement: "scissors" }
  let(:player_2_double) { double name: "dave", movement: "paper" }
  let(:player_3_double) { double name: "james", movement: "scissors" }
  it "The player with scissors movement defeats the player with movement paper" do
    game = Game.new(player_1_double, player_2_double)
    expect(game.winner_term).to eq "soroush won the game"
  end

  it "When the players have the same movement, the game will be equal" do
    game = Game.new(player_1_double, player_3_double)
    expect(game.winner_term).to eq "The game is equal"
  end
end
