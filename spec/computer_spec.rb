require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapon_choice' do
    it 'returns the computer\'s choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
      expect(computer.weapon_choice).to eq 'Rock'
    end
  end
end
