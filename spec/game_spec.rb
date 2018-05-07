require 'game'

describe Game do
  let(:oliver) { double :oliver, choice: "Rock" }
  subject(:game) { described_class.new(oliver) }
  describe '#initialize' do
    it 'has an array of moves' do
      expect(subject.moves).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  describe '#move' do
    it 'selects a random move' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(subject.cpu_move).to eq("Rock")
    end
  end

  describe '#result' do
    it 'shows if the game was tied' do
      allow(Kernel).to receive(:rand).and_return(0)
      subject.cpu_move
      expect(subject.result).to eq("It's a draw!")
    end
    it 'shows if the game was won' do
      allow(Kernel).to receive(:rand).and_return(2)
      subject.cpu_move
      expect(subject.result).to eq("You win!")
    end
    it 'shows if the game was lost' do
      allow(Kernel).to receive(:rand).and_return(1)
      subject.cpu_move
      expect(subject.result).to eq("You lose!")
    end
  end
end
