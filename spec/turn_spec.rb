require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Ferdinand", "player_utensil" => :rock, "bot_utensil" => :rock} }

  describe '#player_name' do
    it 'Returns player name' do
      expect(turn.player_name).to eq "Ferdinand"
    end
  end

  describe '#player_utensil' do
    it 'Returns player utensil' do
      expect(turn.player_utensil).to eq :rock
    end
  end

  describe '#bot_utensil' do
    it 'Returns the bots chosen utensil' do
      expect(turn.bot_utensil).to eq :rock
    end
  end
end
