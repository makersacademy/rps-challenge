require 'computer'

describe Computer do
  context '#choose_move' do
    it 'returns a random weapon choice' do
      srand(67_809)
      expect(subject.choose_move).to eq :scissors
    end
  end
end
