require 'handsigns'

class HandsignsTest
  include Handsigns
end

describe HandsignsTest do
  subject(:handsigns) { described_class.new }

  describe '#winning_sign' do
    it 'expected paper to beat rock' do
      expect(handsigns.winning_sign(:rock, :paper)).to eq :paper
      expect(handsigns.winning_sign(:paper, :rock)).to eq :paper
    end

    it 'expected scissors to beat paper' do
      expect(handsigns.winning_sign(:scissors, :paper)).to eq :scissors
      expect(handsigns.winning_sign(:paper, :scissors)).to eq :scissors
    end

    it 'expected rock to beat scissors' do
      expect(handsigns.winning_sign(:scissors, :rock)).to eq :rock
      expect(handsigns.winning_sign(:rock, :scissors)).to eq :rock
    end

    it 'expected to return nil for equal handsigns' do
      expect(handsigns.winning_sign(:rock, :rock)).to eq nil
      expect(handsigns.winning_sign(:paper, :paper)).to eq nil
      expect(handsigns.winning_sign(:scissors, :scissors)).to eq nil
    end
  end
end
