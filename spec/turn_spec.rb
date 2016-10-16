require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { { "player_name" => "Chet", "player_choice" => :spock, "opponent_choice" => :spock } } 
  
  describe '#player_name' do
    it 'returns player name' do
      expect(turn.player_name).to eq "Chet"
    end
  end
  
  describe '#player_choice' do
    it 'returns player name' do
      expect(turn.player_choice).to eq :spock
    end
  end
  
  describe '#opponent_choice' do
    it 'returns player name' do
      expect(turn.opponent_choice).to eq :spock
    end
  end
end