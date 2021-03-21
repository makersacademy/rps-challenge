require 'rps'

describe Rps do
  let(:game) { Rps.new }
  
  describe '#computer_play' do
    it 'should have a computer input' do
      expect(game.computer_play).to be_a String
    end 
  end 

  describe '#play' do
    it 'should tell who has won' do
      allow(game).to receive(:computer_play) { 'SCISSORS' }
      expect(game.play('ROCK')).to be_a String
    end
    it 'should say you lost as well' do
      allow(game).to receive(:computer_play) { 'SCISSORS' }
      expect(game.play('PAPER')).to be_a String
    end 
  end

  describe '#tie' do
    it 'should know when it is a tie' do
      allow(game).to receive(game.computer_play) { 'ROCK' }
      expect(game.play('ROCK')).to be_a String
    end 
  end 

end 
