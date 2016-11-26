require 'spec_helper'
require "./lib/game"

describe Game do

  subject(:game) {described_class.new(player) }
  let(:player) { double :player }

  context "setup" do
    it "should initialize with a player" do
      expect(game.player).to eq player
    end
  end
end
