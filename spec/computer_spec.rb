require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#choose hand' do
    it 'returns an element that belongs to the list of hands' do
      expect(Computer::HANDS).to include(computer.choose_hand)
    end
  end
end
