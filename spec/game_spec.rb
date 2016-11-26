require 'spec_helper'
require "./lib/game"

describe Game do

  subject(:game) {described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) {double :computer}
  let(:logic) {instance_double "Logic" }

  context "setup" do
    it "should initialize with a player" do
      expect(game.player).to eq player
    end
  end

  context "winning" do
    it "should have a variable to hold a winner" do
      expect(game.winner).to eq nil
    end

    xit "should return the winner" do
      allow(logic).to receive(:player_wins?) {true}
      expect(game.winner).to eq player
    end
  end
end
