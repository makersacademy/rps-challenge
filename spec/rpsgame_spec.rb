require 'rpsgame'

describe RpsGame do
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  subject { RpsGame.new(player1, player2) }

  describe '#players' do
    it 'return player 1' do
      expect(subject.player1).to eq player1
    end

    it 'return player 2' do
      expect(subject.player2).to eq player2
    end
  end

  describe '#select' do
    it 'select the move for player 1' do
      expect(subject.player1).to receive(:move=).with('rock')
      subject.select(player1, 'rock')
    end
  end

  describe '#random_move' do
    it 'select a random move' do
      expect(subject.player1).to receive(:move=).with('rock')
      allow(RpsGame::MOVES).to receive(:sample) { 'rock' }
      subject.random_move(player1)
    end
  end

  describe '#winner' do
    it 'rock wins vs scissor' do
      allow(player1).to receive(:move) { 'rock' }
      allow(player2).to receive(:move) { 'scissor' }
      expect(subject.winner).to eq player1
    end

    it 'rock loses vs paper' do
      allow(player1).to receive(:move) { 'rock' }
      allow(player2).to receive(:move) { 'paper' }
      expect(subject.winner).to eq player2
    end

    it 'rock draws vs rock' do
      allow(player1).to receive(:move) { 'rock' }
      allow(player2).to receive(:move) { 'rock' }
      expect(subject.winner).to eq 'draw'
    end

    it 'paper wins vs rock' do
      allow(player1).to receive(:move) { 'paper' }
      allow(player2).to receive(:move) { 'rock' }
      expect(subject.winner).to eq player1
    end

    it 'paper loses vs scissor' do
      allow(player1).to receive(:move) { 'paper' }
      allow(player2).to receive(:move) { 'scissor' }
      expect(subject.winner).to eq player2
    end

    it 'paper draws vs paper' do
      allow(player1).to receive(:move) { 'paper' }
      allow(player2).to receive(:move) { 'paper' }
      expect(subject.winner).to eq 'draw'
    end

    it 'scissor wins vs paper' do
      allow(player1).to receive(:move) { 'scissor' }
      allow(player2).to receive(:move) { 'paper' }
      expect(subject.winner).to eq player1
    end

    it 'scissor loses vs rock' do
      allow(player1).to receive(:move) { 'scissor' }
      allow(player2).to receive(:move) { 'rock' }
      expect(subject.winner).to eq player2
    end

    it 'scissor draws vs scissor' do
      allow(player1).to receive(:move) { 'scissor' }
      allow(player2).to receive(:move) { 'scissor' }
      expect(subject.winner).to eq 'draw'
    end

  end

end
