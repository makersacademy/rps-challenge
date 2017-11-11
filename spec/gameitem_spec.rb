require 'gameitem'

describe GameItem do
  let(:rock) { described_class.new('rock') }
  let(:paper) { described_class.new('paper') }
  let(:scissors) { described_class.new('scissors') }

  describe '#name' do
    it 'returns name of the Item' do
      expect(rock.name).to eq('rock')
      expect(paper.name).to eq('paper')
      expect(scissors.name).to eq('scissors')
    end
  end

  describe '#beats' do
    it 'returns the name of the item it beats in RPS' do
      expect(rock.beats).to eq('scissors')
      expect(paper.beats).to eq('rock')
      expect(scissors.beats).to eq('paper')
    end
  end
end
