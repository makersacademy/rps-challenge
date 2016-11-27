require 'spec_helper'
require "./lib/game"

describe Game do

  subject(:game) {described_class.new(player, computer, logic) }
  let(:player) { double :player }
  let(:computer) {double :computer}
  let(:logic) {instance_double "Logic" }

  context "setup" do
    it "should initialize with a player" do
      expect(game.player).to eq player
    end
  end

  context "#check_winner" do
    it "should set the winner variable to the player name" do
      allow(player).to receive(:name).and_return("Dan")
      game.check_winner(true)
      expect(game.winner).to eq "Dan"
    end
  end

end
