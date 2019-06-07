require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }

  let(:player) { double(:player) }
  let(:computer) { double(:computer) }

  it 'returns the player object' do
    expect(game.player).to eq player
  end

  it 'returns the computer object' do
    expect(game.computer).to eq computer
  end

  describe "#winner" do
    it 'draw' do
      allow(computer).to receive(:option).and_return(:rock)
      allow(player).to receive(:option).and_return(:rock)
      expect(game.winner).to eq :draw
    end

    it 'player wins' do
      allow(computer).to receive(:option).and_return(:rock)
      allow(player).to receive(:option).and_return(:paper)
      expect(game.winner).to eq player
    end

    it 'computer wins' do
      allow(computer).to receive(:option).and_return(:rock)
      allow(player).to receive(:option).and_return(:scissors)
      expect(game.winner).to eq computer
    end
  end
end
