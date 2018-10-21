require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, name: 'Jane', move: 'move' }
  let(:computer) { double :computer, rand_choice: 'choice' }

  describe '#result' do

    it 'it returns draw' do
      allow(player).to receive(:move) { :rock }
      allow(computer).to receive(:choice) { :rock }
      expect(game.result).to eq "Draw!"
    end

    it 'players wins' do
      allow(player).to receive(:move) { :rock }
      allow(computer).to receive(:choice) { :scissors }
      expect(game.result).to eq "You won!"
    end

    it 'player loses' do
      allow(player).to receive(:move) { :rock }
      allow(computer).to receive(:choice) { :paper }
      expect(game.result).to eq "You lost!"
    end
  end
end
