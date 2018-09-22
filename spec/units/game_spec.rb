require 'game'

RSpec.describe Game do

  let(:billy) { double :Player, name: "Billy", move: "Rock" }
  let(:rpslsbot) { double :RandomPlayer, name: "RPSLSbot", move: "Scissors" }
  let(:fakevg) do
    double :VictoryGenerator,
    winner: billy,
    victory_type: "crushes"
  end

  subject do
    described_class.new(billy, player2: rpslsbot, victory_generator: fakevg)
  end

  it "returns the players names when asked" do
    expect(subject.player_names).to eq ["Billy", "RPSLSbot"]
  end

  it "returns the possible moves when asked" do
    all_moves = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    expect(described_class::POSSIBLE_MOVES).to eq all_moves
  end

  it "knows who has won the game" do
    expect(subject.winner).to eq billy
  end

  it "returns the victory type when asked" do
    expect(subject.victory_type).to eq "crushes"
  end
end
