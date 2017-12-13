require 'enemies'

describe Enemies do

  let(:subject) { described_class.new(:rock, :paper) }

  describe '#initialize' do
    it 'has a pair weapon-nemesis' do
      expect(subject.pair).to eq({ :rock => :paper })
    end
  end
end
