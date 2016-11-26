require 'spec_helper'
require "./lib/game"

describe Game do

  subject(:game) {described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) {double :computer}

  context "setup" do
    it "should initialize with a player" do
      expect(game.player).to eq player
    end
  end
end
