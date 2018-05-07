require 'game'

describe Game do
  let(:oliver) { double :oliver, choice: "Rock" }
  let(:cpu) { double :cpu }
  subject(:game) { described_class.new(oliver, cpu) }

  describe '#result' do
    it 'shows if the game was tied' do
      allow(cpu).to receive(:choice).and_return("Rock")
      expect(subject.result).to eq("It's a draw!")
    end
    it 'shows if the game was won' do
      allow(cpu).to receive(:choice).and_return("Scissors")
      expect(subject.result).to eq("You win!")
    end
    it 'shows if the game was lost' do
      allow(cpu).to receive(:choice).and_return("Paper")
      expect(subject.result).to eq("You lose!")
    end
  end
end
