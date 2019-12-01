require 'game'

describe Game do
  subject(:game) { Game.new }

  before do
    allow(subject).to receive(:random_move).and_return("Rock")
    allow(subject).to receive(:result).and_return(:win)
  end
  
  describe '#random_move' do
    it 'should return rock' do
      expect(subject.random_move).to eq "Rock"
    end

    # Not sure how to test array.sample 
    # it 'should return scissors' do
    #   expect(subject.random_move).to eq "Scissors"
    # end
  end

  describe '#result' do
    it 'when player: rock, computer: scissors' do
      expect(subject.result(:rock)).to eq :win
    end

    it 'when player: scissors, computer: paper' do
      expect(subject.result(:scissors)).to eq :win
    end

    it 'when player: paper, computer: rock' do
      expect(subject.result(:paper)).to eq :win
    end
  end
end