require 'computer'

describe Computer do 
  describe '#weapon' do 
    it 'returns Rock, Paper, Scissors only' do 
      expect(['Rock', 'Paper', 'Scissors']).to include (subject.move)
    end
  end
end
