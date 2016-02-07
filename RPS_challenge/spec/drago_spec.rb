require 'drago'

describe Drago do
  subject(:drago) { described_class.new }

  describe '#name' do

    it 'returns "Drago"' do
      expect(drago.name).to eq 'Drago'
    end
  end
end
