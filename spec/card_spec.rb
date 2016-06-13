require 'card'

describe Card do
  subject(:some_card) { described_class.new('2') }
  
  describe '#id' do
    it 'returns card\'s id according to its index' do
      new_id= Card.new('2').id
      expect(some_card.id).to eq new_id
    end
  end
end