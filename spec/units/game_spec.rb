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

  describe "#calculate_result" do
    it "should return 'You tie!' if player chooses 'Rock' and computer chooses 'Rock'" do
      allow(player).to receive(:choice).and_return "Rock"
      allow(computer).to receive(:random_choice).and_return "Rock"
      expect(game.calculate_result).to eq "You tie!"
    end

    it "should return 'You win!' if player chooses 'Rock' and computer chooses 'Scissors'" do
      allow(player).to receive(:choice).and_return "Rock"
      allow(computer).to receive(:random_choice).and_return "Scissors"
      expect(game.calculate_result).to eq "You win!"
    end

    it "should return 'You lose!' if player chooses 'Rock' and computer chooses 'Paper'" do
      allow(player).to receive(:choice).and_return "Rock"
      allow(computer).to receive(:random_choice).and_return "Paper"
      expect(game.calculate_result).to eq "You lose!"
    end

    it "should return 'You tie!' if player chooses 'Paper' and computer chooses 'Paper'" do
      allow(player).to receive(:choice).and_return "Paper"
      allow(computer).to receive(:random_choice).and_return "Paper"
      expect(game.calculate_result).to eq "You tie!"
    end

    it "should return 'You win!' if player chooses 'Paper' and computer chooses 'Rock'" do
      allow(player).to receive(:choice).and_return "Paper"
      allow(computer).to receive(:random_choice).and_return "Rock"
      expect(game.calculate_result).to eq "You win!"
    end

    it "should return 'You lose!' if player chooses 'Paper' and computer chooses 'Scissors'" do
      allow(player).to receive(:choice).and_return "Paper"
      allow(computer).to receive(:random_choice).and_return "Scissors"
      expect(game.calculate_result).to eq "You lose!"
    end

    it "should return 'You tie!' if player chooses 'Scissors' and computer chooses 'Scissors'" do
      allow(player).to receive(:choice).and_return "Scissors"
      allow(computer).to receive(:random_choice).and_return "Scissors"
      expect(game.calculate_result).to eq "You tie!"
    end

    it "should return 'You win!' if player chooses 'Scissors' and computer chooses 'Paper'" do
      allow(player).to receive(:choice).and_return "Scissors"
      allow(computer).to receive(:random_choice).and_return "Paper"
      expect(game.calculate_result).to eq "You win!"
    end

    it "should return 'You lose!' if player chooses 'Scissors' and computer chooses 'Rock'" do
      allow(player).to receive(:choice).and_return "Scissors"
      allow(computer).to receive(:random_choice).and_return "Rock"
      expect(game.calculate_result).to eq "You lose!"
    end
  end

  describe "#update_player_choice" do
    it "should return the updated player's choice" do
      allow(player).to receive(:update_choice).and_return "Rock"
      expect(game.update_player_choice("Rock")).to eq "Rock"
    end
  end
end
