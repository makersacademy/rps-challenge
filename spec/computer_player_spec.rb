require 'computer_player'

describe ComputerPlayer do
  subject(:computer) { described_class.new }

  describe '#initialize' do
    it 'initializes with default name of computer' do
      expect(computer.name).to eq 'Computer'
    end
  end
  describe '#weapon_choice' do
    it 'selects with a weapon at random' do
      allow(Player::WEAPONS).to receive(:sample).and_return(:rock)
      computer.weapon_choice
      expect(computer.weapon).to eq :rock
    end
  end
end
