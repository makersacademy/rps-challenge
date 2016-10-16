require 'game'

describe Game do
  # let(:players[0]) {double :players[0]}
  let(:player) {double :player}
  subject(:game) {described_class.new(player)}

  describe "#initialize" do
    it "is initialize with an array of choices" do
      expect(game.players).to be_a_kind_of Array
    end
  end

  describe "#choice" do
    it "checks if the result of the game" do
      game.instance_variable_set(:@result, 'Rock')
      expect(["Rock", "Paper", "Scissors"]).to include(game.result)
    end
  end

  describe "#add_compu_points" do
    it "adds 1 point to the computer points" do
      expect{game.add_compu_points}.to change{game.compu_points}.by 1
    end
  end

  describe "#check" do
    it "checks if the player or computer has won" do
      player1 = Player.new('Bob')
      game1 = Game.new(player1)
      player1.points = 5
      expect(game1.check).to eq '/won_game'
    end
  end

  describe "#two_check" do
    it "checks if one of the player has won" do
      player1 = Player.new('Bob')
      player2 = Player.new('Steve')
      game2 = Game.new(player1, player2)
      expect(game2.two_check).to eq '/2play'
    end
  end
end
