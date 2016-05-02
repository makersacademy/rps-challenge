require 'game'
require 'player'
require 'computer'

describe Game do
  let (:computer) {Computer.new}
  let (:user) {double(:user)}
  subject(:game) {Game.new(user)}


  describe "#initialize" do
    it "starts the game with a named player" do
      expect(game.player).to eq user
    end
    it "starts the game wiht a computer opponent" do
      expect(game.computer). to eq computer

    end


  end

end