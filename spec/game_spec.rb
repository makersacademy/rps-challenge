require 'game'

describe Game do
  subject(:game_win) { described_class.new(player_rock, player_scissors) }
  subject(:game_loss) { described_class.new(player_rock, player_paper) }
  subject(:game_draw) { described_class.new(player_rock, player_rock) }
  let(:player_rock) { double :player, :weapon => :rock }
  let(:player_scissors) { double :player, :weapon => :scissors }
  let(:player_paper) { double :player, :weapon => :paper }

  context 'to start,' do
    it "it initializes with two identifiable players" do
      expect(game_win.player_01).to eq player_rock
      expect(game_win.player_02).to eq player_scissors
    end

    it "and has the RPS weapons list" do
      expect(described_class::WEAPONS).to include(:rock, :scissors, :paper)
    end

    it "and has the RPS set of rules" do
      expect(described_class::RULES).to include(:rock => :scissors)
      expect(described_class::RULES).to include(:scissors => :paper)
      expect(described_class::RULES).to include(:paper => :rock)
    end
  end

  context 'then in the game' do
    it 'one can win' do
      expect(game_win.result).to be :p1
    end

    it 'or lose' do
      expect(game_loss.result).to be :p2
    end

    it 'or draw' do
      expect(game_draw.result).to be :draw
    end
  end
end
