require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double("Player") }

  it 'stores a player' do
    expect(game.player).to eq(player)
  end

  it 'determines the winning move' do
    expect(game.winner("rock", "paper")).to eq("paper")
  end

  it 'declares a draw' do
    expect(game.winner("rock", "rock")).to eq("draw")
  end
end
