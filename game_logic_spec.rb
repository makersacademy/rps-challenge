require 'game_logic'

RSpec.describe GameLogic do
  describe '- give a list of game options' do
    it '- for rock paper scissors' do
      expect(GameLogic.options).to eq ['rock', 'paper', 'scissors']
    end
  end

  describe '- Get an AI selection' do
    it '- check selection is valid' do
      20.times {
        expect(['rock', 'paper', 'scissors']).to include(GameLogic.ai_selection)
      }
    end
  end

  describe '- determine a winner' do
    it '- passing rock and rock' do
      expect(GameLogic.result('rock', 'rock')).to eq 'draw'
    end

    it '- passing rock and paper' do
      expect(GameLogic.result('rock', 'paper')).to eq 'player2'
    end
    it '- passing rock and scissors' do
      expect(GameLogic.result('rock', 'scissors')).to eq 'player1'
    end
  end
end
