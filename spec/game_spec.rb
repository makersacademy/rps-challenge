require 'game'

describe Game do
  subject(:game) { described_class.new }
  describe '#initialize' do
    it 'has an array of moves' do
      expect(subject.moves).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  describe '#move' do
    it 'selects a random move' do
      allow(subject.moves).to receive(:sample).and_return("Rock")
      expect(subject.cpu_move).to eq("Rock")
    end
  end

end
