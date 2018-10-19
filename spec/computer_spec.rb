require 'computer'

describe Computer do
  context '#move' do
    it 'generates a move' do
      srand(1)
      expect(subject.pick_move).to eq "Paper"
    end
  end

  context '#initialize' do
    it 'retrieves a move' do
      srand(1)
      expect(subject.move).to eq "Paper"
    end
  end
end
