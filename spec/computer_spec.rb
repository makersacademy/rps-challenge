require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapon_choice' do
    it 'randomly selects a weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      expect(computer.weapon_choice).to eq :scissors
    end
  end
end
