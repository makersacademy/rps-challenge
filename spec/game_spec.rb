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
    it "should return the winner" do
      expect(game.winner("AIbot")).to eq "AIbot"
    end
  end
end
