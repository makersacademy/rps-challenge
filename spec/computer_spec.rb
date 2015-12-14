require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#select_weapon' do
    before do
      allow(computer).to receive(:select_weapon).and_return('Rock')
    end
    it 'allows computer to select a weapon' do
      expect(computer.select_weapon).to eq 'Rock'
    end
  end
end
