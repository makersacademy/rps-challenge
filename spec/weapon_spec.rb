require 'weapon'

describe Weapon do

  subject(:rock) {described_class.new(:rock)}
  subject(:scissors) {described_class.new(:scissors)}
  subject(:paper) {described_class.new(:paper)}

  context "#beats?" do
    it "rock beats scissors" do
      expect(rock.beats?(:scissors)).to eq(true)
    end

    it "scissors beats paper" do
      expect(scissors.beats?(:paper)).to eq(true)
    end

    it "paper beats rock" do
      expect(paper.beats?(:rock)).to eq(true)
    end

  end
end
