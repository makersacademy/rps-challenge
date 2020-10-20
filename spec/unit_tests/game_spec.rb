require 'model/game'

describe Game do

  let(:player) { double :player }
  let(:game) { described_class.new(player) }

  describe "#return_player_name" do
    it "calls the #name method on the player instance" do
      expect(player).to receive(:name)
      game.return_player_name
    end
  end

  describe "#return_player_choice" do
    it "calls the #choice method on the player instance" do
      expect(player).to receive(:choice)
      game.return_player_choice
    end
  end

  describe "#make_player_choice" do
    it "passes the selection information to the Player class" do
      expect(player).to receive(:choose).with(:paper)
      game.make_player_choice(:paper)
    end
  end

  describe "#calculate_result" do
    it "returns the correct result: paper vs rock" do
      srand(2)
      game.robo_choice
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.calculate_result).to eq("You won, ok. Big deal.")
    end
    it "returns the correct result: paper vs scissors" do
      srand(5)
      game.robo_choice
      allow(player).to receive(:choice).and_return(:paper)
      expect(game.calculate_result).to eq("YOU LOST, GET OVER IT")
    end
    it "returns the correct result: rock vs rock" do
      srand(2)
      game.robo_choice
      allow(player).to receive(:choice).and_return(:rock)
      expect(game.calculate_result).to eq("It's a draw.")
    end
  end
end
