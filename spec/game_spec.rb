require 'game'

describe Game do
  subject(:game) {described_class.new}

  describe "the evaluate class" do
    it "to see if it returns the correct string" do
      player1 = Player.new('Muffin')
      comp = Comp.new
      game = Game.new(player1, comp)
      expect(game.evaluate(3, 1)).to eq("You won!")
    end
  end

  describe "the evaluate class" do
    it "to see if it returns the correct string" do
      player1 = Player.new('Muffin')
      comp = Comp.new
      game = Game.new(player1, comp)
      expect(game.evaluate(4, 1)).to eq("The computer won")
      end
    end

end
