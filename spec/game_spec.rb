require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#player' do
    it 'has a player' do
      expect(game.player).to eq player
    end
  end

  describe '#check_winner' do
    xit 'checks who won the game' do
      allow(game.computer).to receive(:weapon).and_return('Scissors')
      allow(game.player).to receive(:choice).and_return('Rock')
      expect(game.computer_wins?).to be_true
      game.check_winner
    end
  end

end
