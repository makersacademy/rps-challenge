require 'game'

describe Game do
  describe '#player' do
    it 'initializes a game with a player' do
      game_new = Game.new('Bob')
      expect(game_new.player).to eq 'Bob'
    end
  end

  describe '#result' do
    it 'displays the correct result, scissors beats paper' do
      game_new = Game.new('Bob')
      game_new.define_choice('scissors')
      game_new.robo_choice('paper')
      expect(game_new.result).to eq :win
    end

    it 'declares a draw if it is scissors vs scissors' do
      game_new = Game.new('Bob')
      game_new.define_choice('scissors')
      game_new.robo_choice('scissors')
      expect(game_new.result).to eq :draw
    end

    it 'declares a lost result if it is scissors vs rock' do
      game_new = Game.new('Bob')
      game_new.define_choice('scissors')
      game_new.robo_choice('rock')
      expect(game_new.result).to eq :lose
    end
  end
end
