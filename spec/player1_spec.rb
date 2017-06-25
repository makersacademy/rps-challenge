require 'player1'

describe Player1 do
  subject(:player1) { Class.new(Player1).instance }
  let(:current_choice) { :Rock }
  
  describe 'attributes' do
    it 'has a name' do
      player1.naming('Momo')
      expect(player1.name).to eq 'Momo'
    end
  end
  
  describe '#choice' do
    it 'shows the choice made by player' do
      player1.choice(current_choice)
      expect(player1.current_choice).to eq :Rock
    end
    
  end
end
