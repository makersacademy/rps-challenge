require 'rps'

describe Rps do
  let(:game) { Rps.new }

  describe '#user_play' do
    it 'should be able to save user input' do
      expect(game.user_play('ROCK')).to eq 'ROCK'
    end 
  end  
  
  describe '#computer_play' do
    it 'should have a computer input' do
      expect(game.computer_play).to be_a String
    end 
  end 

  describe '#play' do
    it 'should tell who has won' do
      allow(game).to receive(:computer_play) { 'SCISSORS' }
      expect(game.play('ROCK')).to eq 'You won!'
    end
    it 'should say you lost as well' do
      allow(game).to receive(:computer_play) { 'SCISSORS' }
      expect(game.play('PAPER')).to eq 'You lost!'
    end 
  end

  describe '#tie' do
    it 'should know when it is a tie' do
      allow(game).to receive(:computer_play) { 'ROCK' }
      expect(game.play('ROCK')).to eq 'It is a tie!'
    end 
  end 

  describe '#user_win?' do
    it 'should know when the user has won' do
      game.user_play('ROCK')
      allow(game).to receive(:computer_play) { 'SCISSORS' }
      expect(game.user_win?).to eq true
    end
    it 'should know a different win' do
      game.user_play('PAPER')
      allow(game).to receive(:computer_play) { 'ROCK' }
      expect(game.user_win?).to eq true
    end
    it 'should know when the user has not won' do
      game.user_play('PAPER')
      allow(game).to receive(:computer_play) { 'SCISSORS' }
      expect(game.user_win?).to eq false
    end 
  end

end 
