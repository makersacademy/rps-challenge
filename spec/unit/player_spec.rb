require 'player'

describe Player do
  let(:example_player) { Player.new("Brian", false) }
  let(:example_ai) { Player.new("Computer", true) }
  let(:game_class) { double :game_class, CHOICES: [:rock, :paper, :scissors] }

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

  describe "current_choice" do
    it "initializes as nil" do
      expect(example_player.current_choice).to eq(nil)
    end

    it "can be changed" do
      example_player.current_choice = :rock
      expect(example_player.current_choice).to eq(:rock)
    end
  end

  describe "randomize_current_choice" do
    it "assigns current_choice a random selection of valid choices from the game class" do
      choices_made = []
      stub_const("RockPaperScissors::CHOICES", [:rock, :paper, :scissors])

      while choices_made.uniq.length < 3
        example_player.randomize_current_choice
        choices_made << example_player.current_choice
      end

      expect(choices_made.uniq.length).to eq(3)
    end
  end

end