require 'game'

describe Game do

  let(:player_1) {Player.new('Elizabeth')}
  subject(:game) {described_class.new}

  it "returns an array of choices" do
    expect(Game::OPTIONS).to match_array([:rock, :paper, :scissors])
  end

  context "when computer returns rock" do
    before do
      allow(game).to receive(:comp) {:rock}
    end

    it "returns 'drew' when player selects rock" do
      expect(game.rock).to eq("drew")
    end

    it "returns 'won!' when player selects paper" do
      expect(game.paper).to eq("won!")
    end

    it "returns 'lost' when player selects scissors" do
      expect(game.scissors).to eq("lost")
    end
  end

  context "when computer returns paper" do
    before do
      allow(game).to receive(:comp) {:paper}
    end

    it "returns 'lost' when player selects rock" do
      expect(game.rock).to eq("lost")
    end

    it "returns 'drew' when player selects paper" do
      expect(game.paper).to eq("drew")
    end

    it "returns 'won!' when player selects scsissors" do
      expect(game.scissors).to eq("won!")
    end
  end

  context "when computer returns scissors" do
    before do
      allow(game).to receive(:comp) {:scissors}
    end

    it "returns 'won' when player selects rock" do
      expect(game.rock).to eq("won!")
    end

    it "returns 'lost' when player selects paper" do
      expect(game.paper).to eq("lost")
    end

    it "returns 'drew' when player selects scissors" do
      expect(game.scissors).to eq("drew")
    end
  end

end
