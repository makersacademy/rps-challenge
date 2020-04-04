require 'game'
require 'computer'

describe Game do
  let(:game) { described_class.new(player_1) }
  let(:player_1) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end

    describe '#result' do
      it 'outputs, win, lose or draw' do
        expect(game.result('rock')).to eq 'lose'
      end
    end
  end
end
