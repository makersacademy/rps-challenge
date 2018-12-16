require 'game'

RSpec.describe Game do 
  let(:player) { double :player}
  describe '#new' do 
    it 'stores a player at start' do 
      game = Game.new(:player)
      expect(game.player).to eq :player
    end
  end
end 