require 'player'

describe Player do

  describe '#choose' do
    it 'returns the chosen object' do
      expect(subject.choose(:rock)).to be :rock
      expect(subject.choose(:paper)).to be :paper
      expect(subject.choose(:scissors)).to be :scissors
      expect(subject.choose(:spock)).to be :spock
      expect(subject.choose(:lizard)).to be :lizard
    end
  end

  context 'when they have chosen an object' do
    it '@object is equal to rock if it is selected' do
      subject.choose :rock
      expect(subject.object).to eq :rock
    end

    it '@object is equal to paper if it is selected' do
      subject.choose :paper
      expect(subject.object).to eq :paper
    end

    it '@object is equal to scissors if it is selected' do
      subject.choose :scissors
      expect(subject.object).to eq :scissors
    end

    it '@object is equal to spock if it is selected' do
      subject.choose :spock
      expect(subject.object).to eq :spock
    end

    it '@object is equal to lizard if it is selected' do
      subject.choose :lizard
      expect(subject.object).to eq :lizard
    end
  end

  it 'should give error if anything other than rock paper scissor is entered' do
    expect{subject.choose('solo')}.to raise_error 'Incorrect option selected'
  end
end
