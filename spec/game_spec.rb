require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) { described_class.new(player, computer) }

  context 'player vs computer' do
    before do
      allow(computer).to receive(:choice).and_return('Rock')
    end

    it 'returns player1 when called' do
      expect(game.player1).to eq player
    end

    it 'returns player2 when called' do
      expect(game.player2).to eq computer
    end

    # it 'returns winner' do
    # end

  end
end
