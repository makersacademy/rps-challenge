require 'game'

describe Game do

let(:player) {double(:player)}
subject(:game) {described_class.new(player)}


  describe '#player' do
    it 'should return a instance of player' do
      expect(game.player1).to eq player
    end
  end
end