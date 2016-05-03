require 'game'


describe Game do
  let (:player2) {double(:player2)}
  let (:user) {double(:user)}
  subject(:game) {Game.new(user, player2)}


  describe "#initialize" do
    it "starts the game with a named player" do
      expect(game.player).to eq user
    end
    it "starts the game wiht a computer opponent" do
      expect(game.computer). to eq player2

    end


  end

end