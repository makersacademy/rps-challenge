require 'game'

describe Game do
  let(:player) { Player.new("Player double") }
  let(:computer) { Computer.new }
  subject(:game) { Game.create(player, computer) }

  describe "#results" do
    it "returns a draw when same weapon is used" do
      player.choice("PAPER")
      srand(4567)
      computer.weapon
      expect(game.results).to eq("It's a draw!")
    end

    it "lets the player win" do
      player.choice("SCISSORS")
      srand(4567)
      computer.weapon
      expect(game.results).to eq("Player double wins!")
    end

    it "lets the computer win" do
      player.choice("ROCK")
      srand(4567)
      computer.weapon
      expect(game.results).to eq("The computer wins.")
    end

  end

end
