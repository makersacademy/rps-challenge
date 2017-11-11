require 'judge'

describe Judge do

  # Other mocks
  let(:some_rulebook) { double(:some_rulebook) }
  let(:enemies) { double(:enemies) }

  # Judges
  let(:subject) { described_class.new(some_rulebook) }

  describe '#initialize' do
    it 'has a rulebook' do
      expect(subject.rulebook).to eq some_rulebook
    end
  end

  describe '#call' do
    before(:each) do
      allow(some_rulebook).to receive(:rules).and_return([enemies])
    end
    it 'returns the name of the player when he wins' do
      allow(enemies).to receive(:pair).and_return({ paper: :scissors })
      expect(subject.call(:paper, :stone)).to eq 'Player wins'
    end

    it 'returns the name of the computer when she wins' do
      allow(enemies).to receive(:pair).and_return({ stone: :paper })
      expect(subject.call(:stone, :paper)).to eq 'Zoe 5.1 wins'
    end

    it 'returns "tie" if both weapons are equal' do
      expect(subject.call(:paper, :paper)).to eq 'Tie'
    end
  end
end
