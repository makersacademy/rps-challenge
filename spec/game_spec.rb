require 'game'

describe Game do

  describe '#result' do
    it "prints 'DRAW!' when computer and player selection match" do
      game = Game.new(:rock, :rock)
      expect(game.result).to eq("DRAW!")
    end

    it "prints 'YOU WIN!' when player beats computer" do
      game = Game.new(:rock, :scissors)
      expect(game.result).to eq("YOU WIN!")
    end

    it "prints 'YOU LOSE!' when computer beats player" do
      game = Game.new(:rock, :paper)
      expect(game.result).to eq("YOU LOSE!")
    end
  end

end
