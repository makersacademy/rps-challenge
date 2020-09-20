require 'game'
require 'player'
describe Game do
  game = Game.new("Ollie")
  it "has a player" do
    expect(game.player1).to be_an_instance_of(Player)
  end

  describe "#img_value" do
    it "returns rock" do
      expect(game.img_value(["rock.x", "rock.y"])).to eq "rock"
    end
    it "returns paper" do
      expect(game.img_value(["paper.x", "paper.y"])).to eq "paper"
    end
    it "returns Scissors" do
      expect(game.img_value(["scissors.x", "scissors.y"])).to eq "scissors"
    end
  end

end