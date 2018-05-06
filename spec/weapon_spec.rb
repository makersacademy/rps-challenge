require 'weapon'

describe Weapon do
  subject(:rock) { described_class.new('rock') }
  subject(:paper) { described_class.new('paper') }
  subject(:scissors) { described_class.new('scissors') }

  describe '#type' do
    it "returns the type of weapon" do
      expect(rock.type).to eq(:rock)
      expect(paper.type).to eq(:paper)
      expect(scissors.type).to eq(:scissors)
    end
  end

end
