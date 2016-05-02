require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#shape' do
    it 'returns the random shape' do
      expect(Computer::SHAPES).to include computer.shape
    end
  end

end