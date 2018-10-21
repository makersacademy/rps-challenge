require 'computer'

describe Computer do
  context '#initialize' do
    it 'retrieves a move' do
      srand(1)
      subject.pick_move
      expect(subject.move).to eq :Paper
    end
  end

  context '#pick_move' do
    it 'generates a move' do
      srand(1)
      expect(subject.pick_move).to eq :Paper
    end
  end
end
