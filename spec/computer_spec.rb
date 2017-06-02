require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#initialize' do
    it 'has a name' do
      expect(computer.name).to eq "The Evil Computer"
    end
  end

  describe '#weapon_choice' do
    it 'chooses a RPS weapon randomly' do
      fake_computer = double(:computer)
      allow(fake_computer).to receive(:weapon_choice).and_return(:rock)
      expect(fake_computer.weapon_choice).to eq :rock
    end
  end
end
