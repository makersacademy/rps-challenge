require 'game'

describe Game do

  subject(:game) {described_class.new}

  it "returns an array of choices" do
    expect(Game::OPTIONS).to match_array([:rock, :paper, :scissors])
  end

  context "when computer returns rock" do
    before do

    end
    it "returns 'drew' when player selects rock" do
      allow(game).to receive(:comp_choice) {:rock}
      expect(game.rock).to eq("drew")
    end
  end

end
