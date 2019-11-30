require "game"

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:game) { Game.new(player, computer) }

  describe "#player" do
    it "should return the player" do
      expect(game.player).to eq player
    end
  end

  describe "#player_name" do
    it "should return the player's name" do
      allow(player).to receive(:name).and_return "Andrea"
      expect(game.player_name).to eq "Andrea"
    end
  end

  describe "#result" do
    it "should return :tie if player chooses :rock and computer chooses :rock" do
      allow(player).to receive(:choice).and_return :rock
      allow(computer).to receive(:random_choice).and_return :rock
      expect(game.result).to eq :tie
    end

    it "should return :win if player chooses :rock and computer chooses :scissors" do
      allow(player).to receive(:choice).and_return :rock
      allow(computer).to receive(:random_choice).and_return :scissors
      expect(game.result).to eq :win
    end

    it "should return :lose if player chooses :rock and computer chooses :paper" do
      allow(player).to receive(:choice).and_return :rock
      allow(computer).to receive(:random_choice).and_return :paper
      expect(game.result).to eq :lose
    end

    it "should return :tie if player chooses :paper and computer chooses :paper" do
      allow(player).to receive(:choice).and_return :paper
      allow(computer).to receive(:random_choice).and_return :paper
      expect(game.result).to eq :tie
    end

    it "should return :win if player chooses :paper and computer chooses :rock" do
      allow(player).to receive(:choice).and_return :paper
      allow(computer).to receive(:random_choice).and_return :rock
      expect(game.result).to eq :win
    end

    it "should return :lose if player chooses :paper and computer chooses :scissors" do
      allow(player).to receive(:choice).and_return :paper
      allow(computer).to receive(:random_choice).and_return :scissors
      expect(game.result).to eq :lose
    end

    it "should return :tie if player chooses :scissors and computer chooses :scissors" do
      allow(player).to receive(:choice).and_return :scissors
      allow(computer).to receive(:random_choice).and_return :scissors
      expect(game.result).to eq :tie
    end

    it "should return :win if player chooses :scissors and computer chooses :paper" do
      allow(player).to receive(:choice).and_return :scissors
      allow(computer).to receive(:random_choice).and_return :paper
      expect(game.result).to eq :win
    end

    it "should return :lose if player chooses :scissors and computer chooses :rock" do
      allow(player).to receive(:choice).and_return :scissors
      allow(computer).to receive(:random_choice).and_return :rock
      expect(game.result).to eq :lose
    end
  end

  describe "#update_player_choice" do
    it "should return the updated player's choice" do
      allow(player).to receive(:update_choice).and_return "Rock"
      expect(game.update_player_choice("Rock")).to eq "Rock"
    end
  end
end
