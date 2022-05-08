require './lib/game'

describe Game do

  subject(:game) { Game.new }
  
  describe '#computer_picked' do
    it 'has three options' do
      expect(Game::OPTIONS).to eq ['rock', 'paper', 'scissors']
    end

    it 'randomly picks either rock, paper or scissors' do
      expect(game.computer_picked).to eq('rock').or eq('scissors').or eq('paper')
    end
  end

  describe '#play' do
    it { is_expected.to respond_to(:play).with(1).argument }

    it 'rock beats scissors' do
      allow(game).to receive(:computer_picked).and_return('rock')
      expect(game.play('scissors')).to eq 'You have lost!'
    end

    it 'scissors beat paper' do
      allow(game).to receive(:computer_picked).and_return('paper')
      expect(game.play('scissors')).to eq 'You have won!'
    end

    it 'paper beats rock' do
      allow(game).to receive(:computer_picked).and_return('rock')
      expect(game.play('paper')).to eq 'You have won!'
    end

    it 'it\'s a draw' do
      allow(game).to receive(:computer_picked).and_return('rock')
      expect(game.play('rock')).to eq 'It\'s a draw'
    end
  end

end 