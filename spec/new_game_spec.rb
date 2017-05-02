require 'new_game'

describe NewGame do
  describe '#opponent_choice?' do
    it 'returns rock, paper or scissors' do
      game = NewGame.new('rock')
      expect(['rock', 'paper', 'scissors']).to include(game.opponent_choice?)
    end
  end

  describe '#winner?' do
    it 'returns "lost" if the opponent wins the game' do
      game = NewGame.new('scissors', 'rock')
      expect(game.winner?).to eq 'You lost'
    end

    it 'returns "won" if the player wins the game' do
      game = NewGame.new('rock', 'scissors')
      expect(game.winner?).to eq 'You won'
    end

    it 'returns "draw" if the player draws with the opponent' do
      game = NewGame.new('rock', 'rock')
      expect(game.winner?).to eq 'You drew with your opponent'
    end
  end
end
