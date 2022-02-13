require_relative '../lib/game'

describe Game do

  subject(:game) { described_class.new(player, opponent) }
  let(:player) { double(:player) }
  let(:opponent) { double(:opponent) }
  

  it "has a player" do
    expect(game.player).to eq player
  end

  it "has an opponent player" do
    expect(game.opponent).to eq opponent
  end

  it "can make a move" do
    game.make_move("Rock")
    expect(game.chosen_move).to eq "Rock"
  end

  it "opponent can make a move" do
    game.opponent_move("Scissors")
    expect(game.opponent_chosen_move).to eq "Scissors"
  end

  it "computer can make a random move" do
    allow(game).to receive(:random_move) { "Paper" }
    game.opponent_move
    expect(game.opponent_chosen_move).to eq "Paper"
  end

end
