require 'game'
require 'player'

describe Game do
 subject(:game) {Game.new(anne, computer)}
 

  describe '#players' do
    it 'returns an array of the players'
    #expect game.players to be an Array
  end



  describe '#player_1' do
    it 'returns Player instance' do
      expect(game.player_1).to be_a Player
    end
    it 'returns player_1 instance' do
      expect(game.player_1.name).to eq("Anne")
    end
  end


end