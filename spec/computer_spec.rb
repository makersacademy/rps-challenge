require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#name' do
    it 'returns the computer\'s name' do
      expect(computer.name).to eq 'Computer'
    end
  end

  describe '#weapon_choice' do
    it 'returns the computer\'s choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      expect(computer.weapon_choice).to eq 'rock'
    end
  end
end
