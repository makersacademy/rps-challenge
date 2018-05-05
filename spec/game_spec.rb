require 'game'

describe Game do
  let(:rock) { double :hand }
  let(:salome) { double :player }
  subject(:game) {Game.new(salome, rock)}
  describe '#initialize' do
    it 'should initialize an opponent' do
      expect(game.player_two).to eq([:rock, :paper, :scissors])
    end
    it 'should initalize a player 1'do
      expect(game.player_one).to eq(salome)
    end
    it 'should initialize a hand for player 1' do
      expect(game.hand).to eq(rock)
    end
  end
end
