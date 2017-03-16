require 'turn'

describe Turn do
  subject(:turn){ described_class.new(options)}
  let(:options){ { "player_name" => "Katie", "player_weapon" => :rock, "opponent_weapon" => :rock} }

  describe "#player_name" do
    it 'returns player name' do
      expect(turn.player_name).to eq "Katie"
    end
  end

    describe "#player_weapon" do
      it 'returns player weapon' do
        expect(turn.player_weapon).to eq :rock
      end
    end

    describe "#opponent_weapon" do
      it 'return opponent weapon' do
        expect(turn.opponent_weapon).to eq :rock
      end
    end
end
