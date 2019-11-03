require 'game'

describe Game do
  subject(:game_rock) {described_class.new(robert_paper)}
  let(:robert_paper) {double(:player, name: "Robert", selection: "paper" )}
  let(:john_rock) {double(:player, name: "John", selection: "rock")}
  let(:dave_scissors) {double(:player, name: "Dave", selection: "scissors")}

  context "attributes" do
    it "has a player" do
      expect(game_rock.player).to eq(robert_paper)
    end

    it "generates a random selection" do
      expect(["rock", "paper", "scissors"]).to include(game_rock.random_selection)
    end
  end

  context "Draw" do
    it "returns 'Draw' when both selections are the same" do
      allow(game_rock).to receive(:random_selection) {"paper"}
      expect(game_rock.play).to eq("Draw")
    end
  end

  context "Winning" do
    it "returns 'Win' when the player chooses paper and the computer chooses rock" do
      allow(game_rock).to receive(:random_selection) {"rock"}
      expect(game_rock.play).to eq("Win")
    end

    it "returns 'Win' when the player chooses rock and the computer chooses scissors" do
      game_scissors = described_class.new(john_rock)
      allow(game_scissors).to receive(:random_selection) {"scissors"}
      expect(game_scissors.play).to eq("Win")
    end

    it "returns 'Win' when the player chooses scissors and the computer chooses paper" do
      game_rock = described_class.new(dave_scissors)
      allow(game_rock).to receive(:random_selection) {"paper"}
      expect(game_rock.play).to eq("Win")
    end
  end

  context "Losing" do
    it "returns 'Lose' when the player chooses paper and the computer chooses scissors" do
      game_scissors = described_class.new(robert_paper)
      allow(game_scissors).to receive(:random_selection) {"scissors"}
      expect(game_scissors.play).to eq("Lose")
    end

    it "returns 'Lose' when the player chooses scissors and the computer chooses rock" do
      game_rock = described_class.new(dave_scissors)
      allow(game_rock).to receive(:random_selection) {"rock"}
      expect(game_rock.play).to eq("Lose")
    end

    it "returns 'Lose' when the player chooses rock and the computer chooses paper" do
      game_paper = described_class.new(john_rock)
      allow(game_paper).to receive(:random_selection) {"paper"}
      expect(game_paper.play).to eq("Lose")
    end
  end
end