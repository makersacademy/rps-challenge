require 'player'

describe Player do

  subject(:player) { described_class.new("Pookie") }

  describe "#name" do
    it "returns a player's name" do
      expect(player.name).to eq "Pookie"
    end
  end

  describe "#select_move" do
    it "enables the player to select a move" do
      player.select_move("Rock")
      expect(player.move).to eq "Rock"
    end
  end

  describe "#win?" do
    it "when the player has won it returns true" do
      moves_double = double(sample: "Scissors")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie", computer)
      player.select_move("Rock")
      expect(player.win?).to eq true
    end
    it "when the player has won it returns true" do
      moves_double = double(sample: "Paper")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie", computer)
      player.select_move("Scissors")
      expect(player.win?).to eq true
    end
    it "when the player has won it returns true" do
      moves_double = double(sample: "Rock")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie", computer)
      player.select_move("Paper")
      expect(player.win?).to eq true
    end
  end

  describe "#loose?" do
    it "when the opponent wins it returns true" do
      moves_double = double(sample: "Rock")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie", computer)
      player.select_move("Scissors")
      expect(player.loose?).to eq true
    end
    it "when the opponent wins it returns true" do
      moves_double = double(sample: "Scissors")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie", computer)
      player.select_move("Paper")
      expect(player.loose?).to eq true
    end
    it "when the opponent wins it returns true" do
      moves_double = double(sample: "Paper")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie", computer)
      player.select_move("Rock")
      expect(player.loose?).to eq true
    end
  end
end
