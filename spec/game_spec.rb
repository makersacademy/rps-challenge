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

  describe '#play' do

    it 'returns win if player beats opponent' do
      allow(game).to receive (:opponent) { :scissors }
      expect(game.play('Rock')).to eq :win
    end
    it 'returns tie if player ties with opponent' do
      allow(game).to receive (:opponent) { :rock }
      expect(game.play('Rock')).to eq :tie
    end
    it 'returns lose if player loses to oppponent' do
      allow(game).to receive (:opponent) { :scissors }
      expect(game.play('Paper')).to eq :lose
    end

  end

end
