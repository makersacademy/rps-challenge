require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#player_1' do
    it 'stores the name of player_1' do
     expect(game.player).to eq player
    end
  end

  describe '#cpu_choose' do
    it 'returns rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(game.cpu_choose).to eq 'rock'
    end
    it 'returns paper' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(game.cpu_choose).to eq 'paper'
    end
    it 'returns scissors' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(game.cpu_choose).to eq 'scissors'
    end
  end
end
