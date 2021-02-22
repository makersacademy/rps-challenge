require 'computer'

describe Computer do
  describe '#move' do
    it 'generates a move for the computer' do
      expect(subject.move).to eq('rock').or(eq('paper')).or(eq('scissors'))
    end
  end
end
