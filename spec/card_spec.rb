require 'card'

describe Card do
  subject(:some_card) { described_class.new("paper") }
  
  describe '#card_number' do
    it 'returns cards number according to its id' do
      number= Card.new("paper").card_number
      expect(some_card.card_number).to eq number
    end
  end
end