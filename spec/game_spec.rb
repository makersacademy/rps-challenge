require 'game'

describe Game do
  let(:player1) {double(:player1)}
  let(:player2) {double(:player2)}
  subject(:game) {described_class.new(player1,player2)}

  context "#player" do
    it "returns player 1 when method called" do
      expect(game.player1).to eq player1
    end

    it "returns player 2 when method called" do
      expect(game.player1).to eq player1
    end
  end

  context "#switch" do
    it "allows players to switch turns" do
      expect(game.current_player).to eq player1
      game.switch
      expect(game.current_player).to eq player2
    end
  end

end
