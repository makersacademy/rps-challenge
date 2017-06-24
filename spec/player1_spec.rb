require 'player1'

describe Player1 do
  subject(:player1) { Class.new(Player1).instance }
  
  describe 'attributes' do
    it 'has a name' do
      player1.naming('Momo')
      expect(player1.name).to eq 'Momo'
    end
  end
  
  describe '#choice' do
    it 'shows the choice made by player' do
      expect(Player1::OPTIONS).to include(player1.choice)
    end
  end
  
  
end
