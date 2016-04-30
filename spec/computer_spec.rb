require 'computer'

describe Computer do
  subject(:comp) {described_class.new}

  describe '#choice' do
    it 'returns the computers move' do
      allow(comp).to receive(:rand) {0}
      comp.choice
      expect(comp.choice).to eq 'Rock'
    end
  end
end
