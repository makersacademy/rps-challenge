require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#play_hand' do
    it 'starts of with an empty hand' do
      expect(computer.hand).to be false
    end
  end
end
