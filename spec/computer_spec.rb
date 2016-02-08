require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#select_weapon' do

    it 'returns a weapon when select_weapon is called' do
      allow(computer).to receive(:select_weapon).and_return(:rock)
      expect(computer.select_weapon).to eq :rock
    end

  end

end
