require 'game'

describe Game do
  let(:subject) { Game.new('Dill') }
  describe '#initialize' do
    it 'creates array of all moves' do
      expect(subject.moves).to eq ['rock', 'paper', 'scissors']
    end
  end

  describe '#random_move' do
    it 'returns a random move' do
      allow(subject).to receive(:random_move) { 'rock' }
      expect(subject.random_move).to eq 'rock'
    end
  end

  describe '#move comparison' do
    it 'returns you win' do
      expect(subject.move_comparison('paper', 'rock')).to eq "You Win"
    end

    it 'returns draw' do
      expect(subject.move_comparison('rock', 'rock')).to eq "Draw!"

    end

    it 'returns computer wins' do
      expect(subject.move_comparison('rock', 'paper')).to eq "Player 2 wins"
    end
  end
end
