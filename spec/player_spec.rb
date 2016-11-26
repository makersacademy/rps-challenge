require 'spec_helper'
require "./lib/player"

describe Player do
  subject(:player) { described_class.new("Dan") }

  context "setup" do
    it "should initialize with a name" do
      expect(player.name).to eq "Dan"
    end
  end

  context "selection" do
    it "knows which selection a player has made" do
      player.choice(:rock)
      expect(player.selection).to eq :rock
    end
  end
end
