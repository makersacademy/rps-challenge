require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:weapon) { double :weapon }

  describe '#weapon_choice' do
    it 'returns the name of the chosen weapon' do
      expect(Computer::WEAPONS).to include computer.weapon_choice
    end
  end

end
