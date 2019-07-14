require 'game'

describe Game do
  describe '#player' do
    it 'initializes a game with a player' do
      game_new = Game.new('Dave')
      expect(game_new.player).to eq 'Dave'
    end
  end

  describe '#result' do
    it 'displays the correct result, scissors beats paper' do
      game_new = Game.new('Dave')
      game_new.define_choice('scissors')
      game_new.bot_choice('paper')
      expect(game_new.result).to eq :win
    end

    it 'declares a draw if it is scissors vs scissors' do
      game_new = Game.new('Dave')
      game_new.define_choice('scissors')
      game_new.bot_choice('scissors')
      expect(game_new.result).to eq :draw
    end

    it 'declares a lost result if it is scissors vs rock' do
      game_new = Game.new('Dave')
      game_new.define_choice('scissors')
      game_new.bot_choice('rock')
      expect(game_new.result).to eq :lose
    end
  end
end
