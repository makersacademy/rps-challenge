require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#initialize' do
    it 'has a name' do
      expect(computer.name).to eq "The Evil Computer"
    end
  end

  describe '#weapon_choice' do
    it 'can choose a weapon' do
      rock_double = double(:computer)
      allow(rock_double).to receive(:weapon_choice).and_return(:rock)
      expect(rock_double.weapon_choice).to eq :rock
    end
  end
end
