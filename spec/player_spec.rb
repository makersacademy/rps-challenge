require 'player'

describe Player do
  let(:rock) { double :rock, name: 'rock' }
  let(:paper) { double :paper, name: 'paper' }
  let(:scissors) { double :rock, name: 'scissors' }
  let(:choices) { [rock, paper, scissors] }
  let(:vin_diesel_name) { 'Vin Diesel' }
  subject { described_class.new(vin_diesel_name) }

  it 'has a name' do
    expect(subject.name).to eq vin_diesel_name
  end

  describe '#computer?' do
    it 'returns false' do
      expect(subject.computer?).to be false
    end
  end

  describe '#make_choice' do
    it 'set\'s user\'s choice from a string' do
      subject.make_choice(choices, choice_string: 'rock')
      expect(subject.choice).to be rock
    end

    it 'if no choice is given, then it returns a random choice' do
      allow(Kernel).to receive(:rand).and_return(1)
      subject.make_choice(choices)
      expect(subject.choice).to be paper
    end
  end

end
