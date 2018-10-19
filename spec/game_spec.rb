require 'game'

describe Game do
  let(:player1) { double(:player1, name: 'John', paralysed?: false) }
  let(:game) { described_class.new(player1) }
  context "initialize" do
    it "accepts a human player" do
      expect(game.player1).to eq player1
    end
  end
end
