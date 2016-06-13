require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:rock) { double :Rock}


  describe '#chosen_weapon' do
    it 'returns the computers weapon' do
      allow(computer).to receive(:chosen_weapon).and_return(:rock)
      expect(computer.chosen_weapon).to eq :rock
    end
  end
end
