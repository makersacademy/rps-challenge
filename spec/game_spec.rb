require 'game'

describe Game do

  subject(:game) {described_class.new(pedro, trish)}
  let(:pedro) {"Pedro"}
  let(:trish) {"Trish"}

  describe '#player_1' do
    it 'returns the name of player 1' do
      expect(game.player_1).to eq "Pedro"
    end

    it 'returns the name of player 2' do
      expect(game.player_2).to eq "Trish"
    end
  end

end
