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

    it "when the player has won with 'Rock' it returns true" do
      computer = double :computer, current_move: "Scissors"
      player = double :player, move: "Rock"
      game = Game.new(player, computer)
      expect(game.win?).to eq true
    end

    it "when the player has won with 'Scissors' it returns true" do
      computer = double :computer, current_move: "Paper"
      player = double :player, move: "Scissors"
      game = Game.new(player, computer)
      expect(game.win?).to eq true
    end

    it "when the player has won with 'Paper' it returns true" do
      computer = double :computer, current_move: "Rock"
      player = double :player, move: "Paper"
      game = Game.new(player, computer)
      expect(game.win?).to eq true
    end
  end

  describe "#loose?" do
    it "when the player has lost with 'Scissors' it returns false" do
      computer = double :computer, current_move: "Rock"
      player = double :player, move: "Scissors"
      game = Game.new(player, computer)
      expect(game.loose?).to eq true
    end

    it "when the player has lost with 'Paper' it returns false" do
      computer = double :computer, current_move: "Scissors"
      player = double :player, move: "Paper"
      game = Game.new(player, computer)
      expect(game.loose?).to eq true
    end

    it "when the player has lost with 'Rock', it returns false" do
      computer = double :computer, current_move: "Paper"
      player = double :player, move: "Rock"
      game = Game.new(player, computer)
      expect(game.loose?).to eq true
    end
  end

  describe "#draw?" do
    it "when the player and opponent both choose 'Rock'" do
      computer = double :computer, current_move: "Rock"
      player = double :player, move: "Rock"
      game = Game.new(player, computer)
      expect(game.draw?).to eq true
    end

    it "when the player and opponent both choose 'Paper'" do
      computer = double :computer, current_move: "Paper"
      player = double :player, move: "Paper"
      game = Game.new(player, computer)
      expect(game.draw?).to eq true
    end

    it "when the player and opponent both choose 'Scissors'" do
      computer = double :computer, current_move: "Scissors"
      player = double :player, move: "Scissors"
      game = Game.new(player, computer)
      expect(game.draw?).to eq true
    end
  end
end
