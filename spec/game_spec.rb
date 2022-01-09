require 'game'

describe Game do

  subject(:game) { described_class.new(session) }
  let(:session) {{ :player_name => 'Jack', :player_choice => 'Rock' }}
    
  describe '#player_name' do
    it 'returns the player name' do
      expect(game.player_name).to eq 'Jack'
    end
  end

  describe '#player_choice' do
    it 'returns rock/paper/scissors' do
      expect(game.player_choice).to eq 'Rock'
    end 
  end  
end