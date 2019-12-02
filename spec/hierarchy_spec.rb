require 'hierarchy'

describe Hierarchy do
  let(:hash) { {rock: :scissors, paper: :rock, scissors: :paper} }

  subject { described_class.new hash }

  describe '#moves' do
    it "should return all possible moves in an array" do
      expect(subject.moves).to include :rock, :scissors, :paper
    end
  end

  describe '#wins' do
    it "should return nil if it's a draw" do
      expect(subject.wins(:rock, :rock)).to be_nil
      expect(subject.wins(:paper, :paper)).to be_nil
      expect(subject.wins(:scissors, :scissors)).to be_nil
    end

    it "should return :rock if it wins" do
      expect(subject.wins(:rock, :scissors)).to eq :rock
      expect(subject.wins(:scissors, :rock)).to eq :rock
    end

    it "should return :paper if it wins" do
      expect(subject.wins(:paper, :rock)).to eq :paper
      expect(subject.wins(:rock, :paper)).to eq :paper
    end

    it "should return :scissors if it wins" do
      expect(subject.wins(:paper, :scissors)).to eq :scissors
      expect(subject.wins(:scissors, :paper)).to eq :scissors
    end
  end
end
