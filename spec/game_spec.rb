require './lib/game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:rock) { 'rock' }
  let(:paper) { 'paper' }
  let(:scissors) { 'scissors' }

  describe '#random_choice' do
    it 'Can return a rock' do
      srand(2)
      expect(game.random_choice).to eq 'rock'
    end

    it 'Can return scissors' do
      srand(3)
      expect(game.random_choice).to eq 'scissors'
    end

    it 'Can return paper' do
      srand(1)
      expect(game.random_choice).to eq 'paper'
    end

    describe '#who_won' do
      it 'Paper should beat rock' do
        expect(game.who_won(paper,rock)).to eq 'You won!'
      end

      it 'Scissors should beat paper' do
        expect(game.who_won(scissors,paper)).to eq 'You won!'
      end

      it 'Rock should beat scissors' do
        expect(game.who_won(rock,scissors)).to eq 'You won!'
      end

      it 'Draw if matched' do
        expect(game.who_won(rock,rock)).to eq 'DRAW!'
      end

    end

  end
end
