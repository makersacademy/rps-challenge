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

  describe '#beats?' do
    context 'when passed a GameItem it defeats'
    it 'returns true' do
      expect(rock.beats?(scissors)).to be(true)
      expect(paper.beats?(rock)).to be(true)
      expect(scissors.beats?(paper)).to be(true)
    end

    context 'when passed a GameItem it loses to'
    it 'returns false' do
      expect(rock.beats?(paper)).to be(false)
      expect(paper.beats?(scissors)).to be(false)
      expect(scissors.beats?(rock)).to be(false)
    end

    context 'when passed a GameItem is the same'
    it 'returns 0' do
      expect(rock.beats?(rock)).to be(0)
      expect(paper.beats?(paper)).to be(0)
      expect(scissors.beats?(scissors)).to be(0)
    end
  end
end
