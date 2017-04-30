require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#play_hand' do

    it 'picks a random hand' do
      expect(Computer::WEAPONS).to include computer.play_hand
    end
  end
end
