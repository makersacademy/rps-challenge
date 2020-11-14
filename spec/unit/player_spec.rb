require 'player'

describe Player do
  let(:example_player) { Player.new("Brian") }
  let(:example_ai) { Player.new("Computer", true) }

  it "initialises with a name" do
    expect(example_player.name).to eq("Brian")
  end

  it "initialises as an AI player" do
    expect(example_ai.ai).to eq(true)
  end

  describe "score" do
    it "initializes with score of 0" do
      expect(example_player.score).to eq(0)
    end

    it "allows score to  be increased" do
      expect { example_player.score += 1 }.to change { example_player.score }.by(1)
    end
  end


end