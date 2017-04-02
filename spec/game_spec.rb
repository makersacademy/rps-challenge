require 'game'

describe Game do

  subject(:game) {described_class.new(pedro, trish)}
  let(:pedro) {"Pedro"}
  let(:trish) {"Trish"}

  describe '#player_1' do
    it 'returns the name of player 1' do
      expect(game.player_1).to eq "Pedro"
    end
  end

  describe '#player_2' do
    it 'returns the name of player 2' do
      expect(game.player_2).to eq "Trish"
    end
  end

  describe '#result' do
    it 'returns the outcome of the game' do
      expect(game.result(:rock,:paper)).to eq :lose
    end
  end

end
