require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Alwin", "player_choice" => :rock, "opposition_choice" => :rock} }

    it 'returns player name' do
      expect(turn.player_name).to eq 'Alwin'
    end

    it 'returns player choice' do
      expect(turn.player_choice).to eq :rock
    end

    it 'returns opponents choice' do
      expect(turn.opposition_choice).to eq :rock
    end

end
