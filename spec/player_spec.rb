require 'player'

describe Player do

  # Other mocks
  let(:scissors) { double(:scissors) }
  let(:some_cabinet) { double(:some_cabinet, release: scissors) }

  # Players
  let(:subject) { described_class.new('Ignacio', some_cabinet) }

  describe '#initialize' do
    it 'has a weapon cabinet' do
      expect(subject.weapon_cabinet).to eq some_cabinet
    end

    it 'has a name' do
      expect(subject.name).to eq 'Ignacio'
    end
  end

  describe '#pick' do
    it 'picks the indicated weapon from the cabinet' do
      expect(subject.pick('scissors')).to eq scissors
    end
  end
end
