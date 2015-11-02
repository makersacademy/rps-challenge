require 'computer'

describe Computer do
  context '#move' do
    it 'returns a random weapon choice' do
      srand(67_809)
      expect(subject.move).to eq 'scissors'
    end
  end
end
