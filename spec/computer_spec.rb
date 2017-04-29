require './lib/computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapons' do
    it 'returns weapons' do
      expect(computer.weapons).to eq Computer::WEAPONS
    end
  end
end
