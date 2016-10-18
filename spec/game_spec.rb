require 'game'

describe Game do
  let(:player) {double :player}
  subject(:game) {described_class.new(player)}

  describe "#initialize" do
    it "is initialize with an array of choices" do
      expect(game.players).to be_a_kind_of Array
    end
  end

  describe "#sample" do
    it "randomly selects a move for the computer" do
      game.sample
      expect(["Rock", "Paper", "Scissors"]).to include(game.result)
    end
  end

  describe "#choice" do
    it "checks the result  if the result against the computer is a Tie" do
      expect(game.choice("Rock", "Rock")).to eq("tie")
    end
    it "checks if the player wins against the computer" do
      expect(game.choice("Paper", "Scissors")).to eq("win")
    end
    it "checks if the players looses against the computer" do
      expect(game.choice("Paper", "Rock")).to eq("lost")
    end
  end

  describe "#add_compu_points" do
    it "adds 1 point to the computer points" do
      expect{game.add_compu_points}.to change{game.compu_points}.by 1
    end
  end
end
