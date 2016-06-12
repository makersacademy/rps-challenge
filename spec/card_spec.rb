require 'card'

describe Card do
  subject(:some_card) { described_class.new('2') }
  
  describe '#card_id' do
    it 'returns cards id according to its number' do
      number= Card.new('2').card_id
      expect(some_card.card_id).to eq number
    end
  end
end