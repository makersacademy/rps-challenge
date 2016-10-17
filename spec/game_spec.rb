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
      game.sample("Rock")
      expect(["Rock", "Paper", "Scissors"]).to include(game.result)
    end
  end

  describe "#choice" do
    it "checks the result  if the result against the computer is a Tie" do
      game.instance_variable_set(:@result, 'Rock')
      expect(game.choice("Rock")).to eq(:tie)
    end
    it "checks if the player wins against the computer" do
      game.instance_variable_set(:@result, 'Paper')
      expect(game.choice("Scissors")).to eq(:win)
    end
    it "checks if the players looses against the computer" do
      game.instance_variable_set(:@result, 'Scissors')
      expect(game.choice("Paper")).to eq(:lost)
    end
  end

  describe "#add_compu_points" do
    it "adds 1 point to the computer points" do
      expect{game.add_compu_points}.to change{game.compu_points}.by 1
    end
  end

  describe "#check" do
    it "checks if the player has won" do
      player1 = Player.new('Bob')
      game1 = Game.new(player1)
      player1.points = 5
      expect(game1.check).to eq '/won_game'
    end
    it "checks if the computer has won" do
      player1 = Player.new('Bob')
      game1 = Game.new(player1)
      game1.compu_points = 5
      expect(game1.check).to eq '/lost_game'
    end
    it "checks if none has won yet" do
      player1 = Player.new('Bob')
      game1 = Game.new(player1)
      expect(game1.check).to eq '/play'
    end
  end

  describe "#two_check" do
    it "checks if player1 has won" do
      player1 = Player.new('Bob')
      player2 = Player.new('Steve')
      game2 = Game.new(player1, player2)
      player1.points = 5
      expect(game2.two_check).to eq '/won_game'
    end
    it "checks if player2 has won" do
      player1 = Player.new('Bob')
      player2 = Player.new('Steve')
      game2 = Game.new(player1, player2)
      player2.points = 5
      expect(game2.two_check).to eq '/2won_game'
    end
    it "checks if none of the players has won yet" do
      player1 = Player.new('Bob')
      player2 = Player.new('Steve')
      game2 = Game.new(player1, player2)
      expect(game2.two_check).to eq '/2play'
    end
  end
end
