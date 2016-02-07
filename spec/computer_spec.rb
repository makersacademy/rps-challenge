require 'computer'

describe ComputerTurn do
  subject(:computer) {described_class.new}
  let(:weapon_choice) {double :weapon_choice}

  describe 'initialize' do

    it 'initializes with a weapon chose randomly from WEAPONS' do
      expect(ComputerTurn::WEAPONS).to include computer.weapon
    end
  end
  describe 'weapon' do

    it 'stores the computer\'s weapon choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return(weapon_choice)
      expect(computer.weapon).to eq weapon_choice
    end
  end
end
