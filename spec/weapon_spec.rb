require 'weapon'

describe Weapon do
  let(:rock1) { described_class.new('rock')}
  let(:scissors) { described_class.new('scissors')}
  subject(:rock) { described_class.new('rock')}

  describe '#type' do
    it 'returns type of weapon from initialization' do
      expect(rock.type).to eq :rock
    end
  end

  describe '#beats?()' do
    it 'returns whether if a weapon beats the weapon as its argument' do
      expect(rock.beats?(scissors)).to eq true
    end
  end

  describe '#draw?()' do
    it "returns if it's a draw between the two weapons" do
      expect(rock.draw?(rock1)).to eq true
    end
  end
end
