require 'machine'

describe Machine do
  subject(:machine) { described_class.new }
  let(:weapon) { :scissors }

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
  end

  describe '#choose_weapon' do
    # it 'returns a random weapon' do
    #   expect(Machine::WEAPON).to include machine.chosen_weapon
    # end
    it 'displays selected option' do
      machine.choose_weapon
      expect(machine.weapon).to eq 'scissors'
    end
  end
end
