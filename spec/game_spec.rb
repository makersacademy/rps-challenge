require './lib/game'

describe Game do
  let(:player) { double :player, :name => 'Jon' }
  let(:computer) { double :player, :name => 'Computer' }
  subject(:game) { Game.create(player, computer) }
  
  describe '#initialize' do
    it 'should have a real player' do
      expect(game.player).to be player
    end
    
    it 'should have a computerised player' do
      expect(game.computer).to be computer
    end
  end
  
  describe '#Game.create' do
    it 'should create a game' do
      expect(Game.create(player, computer)).to be_a_kind_of(Game)
    end
  end

  describe '#Game.instance' do
    it 'should always return the same game (singleton)' do
      game_1 = Game.create(player, computer)
      game_2 = Game.instance
      expect(game_1).to be game_2
    end
  end
end
