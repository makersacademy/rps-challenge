require 'game'

describe Game do

  describe '#player' do
    let(:player) {double :player}
    it 'should store a player in the current game' do
       game = Game.new(player)
       expect(game.player).to eq (player)
    end
  end

end
