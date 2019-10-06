require 'rules'

describe Rules do
  describe '#defeats?' do
    it 'paper defeats rock' do
      expect(subject.defeats?(:paper, :rock)).to eq true
    end

    it 'paper does not defeat scissors' do
      expect(subject.defeats?(:paper, :scissors)).to eq false
    end

    it 'spock does not defeat paper' do
      expect(subject.defeats?(:spock, :paper)).to eq false
    end

    it 'lizard defeats spock' do
      expect(subject.defeats?(:lizard, :spock)).to eq true
    end
  end

  describe '#reason_finder' do
    it { expect(subject.reason_finder(:spock, :paper)).to eq 'paper disproves spock' }
  end
end
