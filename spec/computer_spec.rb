require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:rock) { double :Rock}


  describe '#chosen_weapon' do
    it 'returns the computers weapon' do
      expect(computer.chosen_weapon).to eq 'Rock'
    end
  end
end
