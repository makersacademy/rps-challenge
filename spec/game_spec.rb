require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#add' do
    it 'can add players' do
      (game.add(player1, player2))
      expect(game.players).to eq [player1, player2]
    end
  end

end
