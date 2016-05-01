require 'game'
require 'player'
require 'computer'

describe Game do
  let (:computer) {Computer.new}
  subject(:game) {Game.new('User', computer)}


  describe "#initialize" do
    it "starts the game with a named player" do
      expect(game.player.name).to eq "User"
    end
    it "starts the game wiht a computer opponent" do
      expect(game.computer). to eq computer

    end


  end

end