require 'game'

describe Game do

  let(:game) {described_class.new(player,computer)}
  let(:computer) {double(:computer)}
  let(:player)   {double(:player)}

  context "When initialized it" do
    it "Has a computer" do
      expect(game.computer).to eq(computer)
    end

    it "Has a player" do
      expect(game.player).to eq(player)
    end
  end







end
