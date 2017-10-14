require 'game'

describe Game do

  subject(:game) { Game.new('Ainsley') }
  player = 'Ainsley'

  describe '#player' do

    it 'returns the current game' do
      expect(game.player).to eq 'Ainsley'
    end

  end

  describe '#self.create_game' do

    it 'creates a new game instance' do
      expect(Game.create_game(player)).to be_instance_of Game
    end

  end

  describe '#self.current_game' do
    
    it 'returns the current game instance' do
      Game.create_game(player)
      expect(Game.current_game).to be_instance_of Game
    end

  end

  describe '#weapons' do

    it 'has a choice of weapons' do
      expect(game.weapons).to include(:rock,:paper,:scissors)
    end

  end

end
