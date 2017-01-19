require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) { described_class.new(player, computer)}

  describe "#who_won" do
    before do
      allow(computer).to receive(:move).and_return(:paper)
    end

    it "shows that player won" do
      allow(player).to receive(:move).and_return(:scissors)
      expect(game.who_won).to eq :player
    end

    it "shows that computer won" do
      allow(player).to receive(:move).and_return(:rock)
      expect(game.who_won).to eq :computer
    end

    it "shows a draw" do
      allow(player).to receive(:move).and_return(:paper)
      expect(game.who_won).to eq :draw
    end
  end

  it "keeps score" do
    allow(computer).to receive(:move).and_return(:paper)
    allow(player).to receive(:move).and_return(:scissors)
    game.keep_score
    expect(game.score).to eq ({:player=>1, :computer=>0})
  end

end
