require_relative '../lib/player'
  
describe Game do
  player = Player.new('Lucas')
  opponent = Player.new('Angelica Pickles', 'rock') 
  subject(:game) { described_class.new(player, opponent) }

  describe '#get winner' do
    it 'tests for a draw' do
      game = Game.new(player,opponent)
      expect(game.results).to eq "It's a draw!!"
    end
    it 'tests for a player win' do
      opponent = Player.new('Angelica Pickles', 'scissors') 
      game = Game.new(player,opponent)
      expect(game.results).to eq "Lucas wins!!"
    end
    it 'tests for an opponent win' do
      opponent = Player.new('Angelica Pickles', 'paper') 
      game = Game.new(player,opponent)
      expect(game.results).to eq "Angelica Pickles wins!!"
    end
  end
  
end
