require 'computer_player'

describe ComputerPlayer do

  subject(:computer_player) { described_class.new }

  describe '#choose_weapon' do
    it 'randomly chooses a wepaon' do
      allow(computer_player.weapons).to receive(:sample).and_return(:paper)
      expect(computer_player.choose_weapon).to eq :paper
    end
  end

  describe '#add_weapon' do
    it 'adds a weapon' do
      weapon = double(:weapon)
      computer_player.add_weapon(weapon)
      expect(computer_player.weapon).to eq weapon
    end
  end

end
