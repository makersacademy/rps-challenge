require 'game'

describe Game do
  let(:salome) { double :player }
  subject(:game) {Game.new(salome)}
  describe '#initialize' do
    it 'should initialize an opponent' do
      expect(game.player_two).to eq([:rock, :paper, :scissors])
    end
    it 'should initalize a player 1'do
      expect(game.player_one).to eq(salome)
    end
  end

end
