require 'game'

describe Game do

  let(:player1) { :double }
  let(:player2) { :double }
  let(:game)  { Game.new(player1, player2) }

  it "returns players weapon choice" do
    expect(game.player_1_choice = ("Rock")).to eq "Rock"
  end

  it "returns a winner" do
    game.player_1_choice = "Rock"
    game.player_2_choice = "Scissors"
    expect(game.result).to eq :player_1_win
  end
  
  it "returns a loser" do
    game.player_1_choice = ("Paper")
    game.player_2_choice = ("Scissors")
    expect(game.result).to eq :player_2_win
  end

  it "returns a draw" do
    game.player_1_choice = ("Paper")
    game.player_2_choice = ("Paper")
    expect(game.result).to eq :draw
  end
end
