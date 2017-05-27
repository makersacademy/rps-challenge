require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#shape' do
    it 'returns a random shape' do
      srand 1234
      expect(computer.shape).to eq :scissors
    end
  end

end
