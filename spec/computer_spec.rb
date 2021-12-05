require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#computer move' do
    it {is_expected.to respond_to(:move)}

    it 'should return rock, paper or scissors' do
      subject.move
      expect(subject.move).to eq('Rock').or eq('Paper').or eq('Scissors')
    end
  end
end