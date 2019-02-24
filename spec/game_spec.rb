require 'game'

describe Game do

  subject(:game) { described_class.new(options) }
  let(:options) { { "player_name" => 'Mittens', "player_choice" => :rock, "opponent_choice" => :scissors } }

  describe '#player_name' do
    it 'returns player name' do
      expect(game.player_name).to eq 'Mittens'
    end
  end

  describe '#player_choice' do
    it 'returns player choice' do
      expect(game.player_choice).to eq :rock
    end
  end

  describe '#opponent_choice' do
    it 'returns opponent choice' do
      expect(game.opponent_choice).to eq :scissors
    end
  end

end
