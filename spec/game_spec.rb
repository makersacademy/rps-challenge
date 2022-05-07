require './lib/game'

describe Game do
  
  describe '#computer_picked' do
    it 'has three options' do
      expect(Game::OPTIONS).to eq ['rock', 'paper', 'scissors']
    end

    it 'randomly picks either rock, paper or scissors' do
      expect(subject.computer_picked).to eq('rock').or eq('scissors').or eq('paper')
    end

  end

end 