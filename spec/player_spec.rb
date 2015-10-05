require 'player'

describe Player do

  describe '#choose' do
    it 'rock and returns rock' do
      expect(subject.choose(:rock)).to be :rock
    end

    it 'paper and returns paper' do
      expect(subject.choose(:paper)).to be :paper
    end

    it 'scissors and returns scissors' do
      expect(subject.choose(:scissors)).to be :scissors
    end

    it 'spock and returns spock' do
      expect(subject.choose(:spock)).to be :spock
    end

    it 'lizard and returns lizard' do
      expect(subject.choose(:lizard)).to be :lizard
    end

    it 'should give error if anything other than game objects are entered' do
      expect{subject.choose('solo')}.to raise_error 'Incorrect option selected'
    end
  end
end
