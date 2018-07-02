require 'game'

describe Game do

  subject(:game)      { described_class.new(player1,player2) }
  let(:player1)       { :Player1 }
  let(:player2)       { :Player2 }
  let(:rock)          { double(:rock, :choice => "rock") }
  let(:scissors)      { double(:scissors, :choice => "scissors") }
  let(:paper)         { double(:paper, :choice => "paper") }

  describe '#initialize' do

    it 'Sets up with a player1' do
      expect(game.player1).to eq player1
    end

    it 'Sets up with a player2' do
      expect(game.player2).to eq player2
    end

    it 'Sets up with an empty array' do
      expect(game.moves).to eq []
    end

  end

  describe '#store' do

    it 'Stores the move in the moves array' do
      game.store(rock)
      expect(game.moves).to include("rock")
    end

  end

  describe '#result' do

    context 'When both players pick the same' do
      it 'It\'s a draw' do
        game.store(rock)
        game.store(rock)
        expect(game.result).to eq "It's a draw!"
      end
    end

    context 'When rock plays scissors' do
      it 'Player1 wins' do
        game.store(rock)
        game.store(scissors)
        expect(game.result).to eq "#{player1} wins!"
      end
    end

    context 'When scissor plays paper' do
      it 'Player1 wins' do
        game.store(scissors)
        game.store(paper)
        expect(game.result).to eq "#{player1} wins!"
      end
    end

    context 'When paper plays rock' do
      it 'Player1 wins' do
        game.store(paper)
        game.store(rock)
        expect(game.result).to eq "#{player1} wins!"
      end
    end

    context 'With any other combination' do
      it 'Player2 wins' do
        game.store(rock)
        game.store(paper)
        expect(game.result).to eq "#{player2} wins!"
      end
    end

  end

end
