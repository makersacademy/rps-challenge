require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#item' do
    it 'returns an item' do
      expect(Computer::ITEMS).to include(computer.item)
    end
  end
end
