require 'computer'

describe Computer do
  describe '#move' do
    it 'chooses a move for the comupter to make' do
      subject.move
      srand(2)
      expect(subject.move).to eq "Rock"
    end
  end
end
