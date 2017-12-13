require 'computer'

describe Computer do

  # Other mocks
  let(:some_cabinet) { double(:some_cabinet) }

  # Computers
  let(:subject) { described_class.new(some_cabinet) }

  describe '#initialize' do
    it 'has a weapon cabinet' do
      expect(subject.weapon_cabinet).to eq some_cabinet
    end
    it 'has a name' do
      expect(subject.name).to eq 'Zoe 5.1'
    end
  end

  describe '#pick_weapon' do
    it 'picks a weapon randomly' do
      allow(some_cabinet).to receive(:release).and_return('scissors')
      expect(subject.pick_weapon).to eq 'scissors'
    end

    it 'picks a weapon randomly' do
      allow(some_cabinet).to receive(:release).and_return('rock')
      expect(subject.pick_weapon).to eq 'rock'
    end
  end
end
