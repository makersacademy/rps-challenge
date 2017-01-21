require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Ferdinand", "player_tool" => :rock, "bot_tool" => :rock} }

  describe '#player_name' do
    it 'Returns player name' do
      expect(turn.player_name).to eq "Ferdinand"
    end
  end

  describe '#player_tool' do
    it 'Returns player tool' do
      expect(turn.player_tool).to eq :rock
    end
  end

  describe '#bot_tool' do
    it 'Returns the bots chosen tool' do
      expect(turn.bot_tool).to eq :rock 
    end
  end
end
