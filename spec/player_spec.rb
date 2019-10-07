require 'player'

describe Player do

  let(:steve) { Player.new("steve") }
  let(:rock) { double :rock }
  let(:paper) { double :paper }
  let(:scissors) { double :scissors }

  describe '#pick' do

    it 'should pick rock' do
      steve.pick(rock)
      expect(steve.current_pick).to eq rock
    end

    it 'should choose paper' do
      steve.pick(paper)
      expect(steve.current_pick).to eq paper
    end

    it 'should choose scissors' do
      steve.pick(scissors)
      expect(steve.current_pick).to eq scissors
    end

  end
end
