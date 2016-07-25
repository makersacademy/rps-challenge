require 'player'

describe Player do
  subject {described_class.new("Thady")}
  let(:rock) {double :rock}

  describe '#initialize' do
    it 'gets players name' do
      expect(subject.name).to eq "Thady"
    end

    it 'creates a hash of weapons' do
      expect(subject.weapons).to include 'Rock'
    end
  end

  describe '#weapon' do
    it 'creates a holds the players weapon choice' do
      subject.weapon_assign('Rock')
      expect(subject.weapon).to be_instance_of Rock
    end
  end
end
