require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#choose_weapon' do
    before do
      allow(computer).to receive(:choose_weapon).and_return('Rock')
    end
    it 'allows computer to choose weapon' do
      expect(computer.choose_weapon).to eq 'Rock'
    end
  end
end
