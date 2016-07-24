require 'player'

describe Player do

  subject { described_class.new(name) }
  let(:name){double :name}

  describe '#initialize' do
    it 'initializes with a name' do
      expect(subject.name).to eq name
    end
  end

  describe '#choose_weapon' do
    it 'assigns choice a weapon symbol' do
      subject.choose_weapon("rock")
      expect(subject.choice).to eq :rock
    end
  end
end
