require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#player' do
    it 'retrieves the user as a player' do
      expect(game.player).to eq player
    end
  end

  describe '#opponent' do
    it 'retrieves the second player' do
      expect(game.opponent).to eq computer
    end
  end

  describe "#win?" do
    it "when the player has won it returns true" do
      moves_double = double(sample: "Scissors")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie")
      player.select_move("Rock")
      game = Game.new(player, computer)
      expect(game.win?).to eq true
    end
    it "when the player has won it returns true" do
      moves_double = double(sample: "Paper")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie")
      player.select_move("Scissors")
      game = Game.new(player, computer)
      expect(game.win?).to eq true
    end
    it "when the player has won it returns true" do
      moves_double = double(sample: "Rock")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie")
      player.select_move("Paper")
      game = Game.new(player, computer)
      expect(game.win?).to eq true
    end
  end

  describe "#loose?" do
    it "when the opponent wins it returns true" do
      moves_double = double(sample: "Rock")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie")
      player.select_move("Scissors")
      game = Game.new(player, computer)
      expect(game.loose?).to eq true
    end
    it "when the opponent wins it returns true" do
      moves_double = double(sample: "Scissors")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie")
      player.select_move("Paper")
      game = Game.new(player, computer)
      expect(game.loose?).to eq true
    end
    it "when the opponent wins it returns true" do
      moves_double = double(sample: "Paper")
      computer = Computer.new(moves_double)
      player = Player.new("Pookie")
      player.select_move("Rock")
      game = Game.new(player, computer)
      expect(game.loose?).to eq true
    end
  end
end
