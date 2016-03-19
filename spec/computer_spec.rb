require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:weapon) { double :weapon }

  describe '#initialize' do
    it 'sets value of name to CPU' do
      expect(computer.name).to eq("CPU")
    end
  end

  describe '#pick_weapon' do
    it 'selects a weapon' do
      expect(Game::WEAPONS).to receive(:sample)
      computer.pick_weapon
    end
    it 'sets value of weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(weapon)
      computer.pick_weapon
      expect(computer.weapon).to be weapon
    end
  end

end
