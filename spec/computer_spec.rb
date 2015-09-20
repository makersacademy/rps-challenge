require 'computer'

describe Computer do
  let(:computer){described_class.new}
  describe '#throws' do
    it 'throws a shape' do
      shapes = ['spock', 'spock']
      expect(computer.throws(shapes)).to eq 'spock'
    end
  end
end
