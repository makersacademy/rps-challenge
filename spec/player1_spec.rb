require 'player1'

describe Player1 do
  subject(:player1) { Class.new(Player1).instance }
  let(:current_choice) { :rock }
  
  before do
    player1.naming('Momo')
  end
  
  describe 'attributes' do
    it 'has a name' do
      expect(player1.name).to eq 'Momo'
    end
  end
  
  describe '#choice' do
    it 'shows the choice made by player' do
      player1.choice(current_choice)
      expect(player1.current_choice).to eq :rock
    end
    
    it 'adds the last choice to previous choices' do
      player1.choice(current_choice)
      expect(player1.previous_choices.last).to eq :rock
    end
    
  end
end
