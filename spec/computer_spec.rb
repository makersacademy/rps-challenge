require 'computer'

describe Computer do
  describe '#throws' do
    it 'throws a shape' do
      shapes = ['spock', 'spock']
      expect(subject.throws(shapes)).to eq 'spock'
    end
  end
end
