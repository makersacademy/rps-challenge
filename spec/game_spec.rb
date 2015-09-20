require "game"

describe Game do
  let(:game)     {Game.new}
  let(:player)   {Player.new(:Tim)}
  let(:computer) {double Computer.new}

  context "Player wins round" do
    it "is Player's round if Player chooses rock and Computer chooses scissors" do
      player.select(:rock)
      allow(computer).to receive(:select).and_return(:scissors)
      expect(game.play(player, computer)).to eq("You win!")
    end

    it "is Player's round if Player chooses paper and Computer chooses rock" do
      player.select(:paper)
      allow(computer).to receive(:select).and_return(:rock)
      expect(game.play(player, computer)).to eq("You win!")
    end

    it "is Player's round if Player chooses scissors and Computer chooses paper" do
      player.select(:scissors)
      allow(computer).to receive(:select).and_return(:paper)
      expect(game.play(player, computer)).to eq("You win!")
    end
  end

  context "Computer wins round" do
    it "is Computer's round if Player chooses rock and Computer chooses paper" do
      player.select(:rock)
      allow(computer).to receive(:select).and_return(:paper)
      expect(game.play(player, computer)).to eq("The computer wins!")
    end

    it "is Computer's round if Player chooses paper and Computer chooses scissors" do
      player.select(:paper)
      allow(computer).to receive(:select).and_return(:scissors)
      expect(game.play(player, computer)).to eq("The computer wins!")
    end

    it "is Computer's round if Player chooses scissors and Computer chooses rock" do
      player.select(:scissors)
      allow(computer).to receive(:select).and_return(:rock)
      expect(game.play(player, computer)).to eq("The computer wins!")
    end
  end

  context "Round is a draw" do
    it "is a draw if Player chooses rock and Computer chooses rock" do
      player.select(:rock)
      allow(computer).to receive(:select).and_return(:rock)
      expect(game.play(player, computer)).to eq("That was a tie!")
    end

    it "is a draw if Player chooses paper and Computer chooses paper" do
      player.select(:paper)
      allow(computer).to receive(:select).and_return(:paper)
      expect(game.play(player, computer)).to eq("That was a tie!")
    end

    it "is a draw if Player chooses scissors and Computer chooses scissors" do
      player.select(:scissors)
      allow(computer).to receive(:select).and_return(:scissors)
      expect(game.play(player, computer)).to eq("That was a tie!")
    end
  end
end
