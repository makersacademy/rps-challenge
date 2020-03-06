require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "George", "player_choice" => :rock, "cpu_choice" => :rock} }

  describe '#player_name' do
    it 'return player name' do
      expect(turn.player_name).to eq "George"
    end
  end

  describe '#player_choice' do
    it 'return player choice' do
      expect(turn.player_choice).to eq :rock
    end
  end

  describe '#cpu_choice' do
    it 'return cpu choice' do
      expect(turn.cpu_choice).to eq :rock
    end
  end
end