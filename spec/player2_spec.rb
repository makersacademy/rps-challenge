require 'player2'

describe Player2 do
  
  subject(:player2) { Class.new(Player2).instance }
  let(:current_choice) { :rock }
  
  before do
    player2.naming('Nono')
  end
  
  describe '#attributes' do
    it 'has a name' do
      expect(player2.name).to eq 'Nono'
    end
  end
  
  describe '#choice' do
    it 'shows the choice made by player' do
      player2.choice(current_choice)
      expect(player2.current_choice).to eq :rock
    end
    
    it 'randomly selects an option if none provided' do
      expect(Player2::OPTIONS).to include(player2.choice)
    end
    
    it 'adds the last choice to previous choices' do
      player2.choice(current_choice)
      expect(player2.previous_choices.last).to eq :rock
    end
  end
end
