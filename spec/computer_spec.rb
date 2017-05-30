require 'computer'

describe Computer do

  let(:computer) { described_class.new }

  describe '#choice' do
    it 'returns a random choice' do
      expect(Computer::SHAPES).to include computer.choice
    end
  end

end
