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
      allow(computer).to receive(:computer_move).and_return('Rock')
      allow(player).to receive(:option).and_return('Rock')
      expect(game.winner).to eq "Draw!"
    end

    it 'player wins' do
      allow(computer).to receive(:computer_move).and_return('Rock')
      allow(player).to receive(:option).and_return('Paper')
      expect(game.winner).to eq "You win!"
    end

    it 'computer wins' do
      allow(computer).to receive(:computer_move).and_return('Rock')
      allow(player).to receive(:option).and_return('Scissors')
      expect(game.winner).to eq "The computer wins!"
    end
  end
end
