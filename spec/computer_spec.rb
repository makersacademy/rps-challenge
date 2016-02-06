require 'computer'

describe Computer do
  subject(:comp) { described_class.new}

  describe '#computer_response' do
    it 'returns computer response' do
      allow(comp).to receive(:response).and_return('PAPER')
      expect(comp.response).to eq('PAPER')
    end
  end

end
