require 'match'

describe Match do
  let(:player) { double :player }
  let(:player_class) { double :player_class, new: player }
  let(:match) { Match.new("Henry", player_class: player_class) }

  describe '#game_type' do
    it 'expects game type to be single player by default' do
      expect(match.game_type).to eq("single")
    end
  end
end
