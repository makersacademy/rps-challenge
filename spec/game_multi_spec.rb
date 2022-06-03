require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player, type: :human }

  it "returns false for single player" do
    expect(game.single_player).to eq false
  end

  it "multi returns win if player_1 wins" do
    allow(player_1).to receive(:weapon).and_return(:rock)
    allow(player_2).to receive(:weapon).and_return(:scissors)
    expect(game.result).to eq :win
  end

  it "multi returns lose if player_2 wins" do
    allow(player_1).to receive(:weapon).and_return(:rock)
    allow(player_2).to receive(:weapon).and_return(:paper)
    expect(game.result).to eq :lose
  end

  it "multi returns draw if a draw" do
    allow(player_1).to receive(:weapon).and_return(:rock)
    allow(player_2).to receive(:weapon).and_return(:rock)
    expect(game.result).to eq :draw
  end
end
