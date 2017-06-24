require 'player2'

describe Player2 do
  
  subject(:player2) { Class.new(Player2).instance }
  
  describe '#attributes' do
    it 'has a name' do
      player2.naming('Nono')
      expect(player2.name).to eq 'Nono'
    end
  end
  
  
end
