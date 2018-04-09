require_relative '../lib/game.rb'

describe Game do
  
  describe '.get_game' do
    context 'there is no game instance yet' do
      it 'returns a new instance of Game' do
        expect(Game.get_game).to be_an_instance_of(Game)
      end
    end
    
    context 'there is an existing game instance' do
      it 'returns the single Game instance' do
        game = Game.new
        expect(Game.get_game).to eq game
      end
    end
  end

  describe '#add_player' do
    it 'adds a player to players with choice set to nil' do
      Game.get_game.add_player 'alpha'
      expect(Game.get_game.instance_variable_get(:@players)).to eq({'alpha'=>nil})
    end
  end

  describe '#n_of_players' do
    it 'returns the number of players in game' do
      expect(Game.new.add_player('alpha').add_player('beta').n_of_players).to eq 2
    end
  end

  describe '#set_choice' do
    it 'records the choice (rock, paper, scissors) a player made' do
      expect(Game.new.add_player('alpha').set_choice('alpha:rock').instance_variable_get(:@players)).to eq({'alpha'=>'rock'})
    end
  end

  describe '#choices_complete?' do
    before(:each) do
      @game = Game.new.add_player('alpha').set_choice('alpha:rock')
    end
    context 'all players have made their choices' do
      it 'returns true' do
        expect(@game.choices_complete?).to eq true
      end
    end
    
    context 'not all players have made their choices' do
      it 'returns false' do
        @game.add_player 'beta'
        expect(@game.choices_complete?).to eq false
      end
    end 
  end

  describe '#finalize' do
    it 'sets the winner of the game' do
      game = Game.new.set_choice('alpha:rock').set_choice('beta:scissors')
      game.finalize
      expect(game.instance_variable_get(:@winner)).to eq 'alpha'
    end
  end 

  describe '#message_for' do
    context 'the players are even' do
      it "returns players' choices and text 'Even!!'" do
        game = Game.new.set_choice('alpha:scissors').set_choice('beta:scissors').finalize
        expect(game.message_for('alpha')).to eq "You chose scissors and beta chose scissors. Even!!"
      end
    end

    context 'the player has lost' do
      it "returns players' choices and text 'You lose!'" do
        game = Game.new.set_choice('alpha:scissors').set_choice('beta:paper').finalize
        expect(game.message_for('beta')).to eq "You chose paper and alpha chose scissors. You lose!"
      end
    end

    context 'the player has won' do
      it "returns players' choices and text 'You won!!'" do
        game = Game.new.set_choice('alpha:rock').set_choice('beta:paper').finalize
        expect(game.message_for('beta')).to eq "You chose paper and alpha chose rock. You won!!"
      end
    end
  end
end
