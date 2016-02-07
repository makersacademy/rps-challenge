require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) {double :player}
  let(:computer) {double :computer}

  context 'to play a game' do
    it 'should be able to see a player' do
      expect(game.player).to eq player
    end
  end

  describe '#result' do
    context 'possible outcomes of game' do
      it 'win' do
        expect(game.result(:rock, :scissors)).to eq :win
      end
      it 'lose' do
        expect(game.result(:rock, :paper)).to eq :lose
      end
      it 'draw' do
        expect(game.result(:rock, :rock)).to eq :draw
      end
    end
  end
end
