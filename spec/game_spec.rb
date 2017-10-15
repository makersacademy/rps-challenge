require 'game'

describe Game do

  let(:calc) { double('Calculator', compare: :win) }
  subject(:game) { Game.new('Ainsley', calc) }

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
      expect(game.weapons).to include(:rock, :paper, :scissors)
    end

  end

  describe '#play' do

    before { allow(game).to receive(:opponent) { :rock } }

    it 'creates a new opponent' do    
      expect(game).to receive(:create_opponent)
      game.play('Rock')
    end
    it 'calculates the game result' do
      expect(calc).to receive(:compare)
      game.play('Paper')
    end

  end

  describe '#result' do

    it 'returns the result' do
      allow(game).to receive(:opponent) { :paper }
      game.play('Rock')
      expect(game.result).to eq "<p id='first'>Rock beats paper<br>You won!</p>"
    end

  end

end
