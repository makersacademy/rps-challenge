require 'spec_helper'
require "./lib/player"

describe Logic do

  subject(:logic_rs) {described_class.new("Rock", "Scissors")}
  subject(:logic_pr) {described_class.new("Paper", "Rock")}
  subject(:logic_sp) {described_class.new("Scissors", "Paper")}
  subject(:logic_sr) {described_class.new("Scissors", "Rock")}
  subject(:logic_rp) {described_class.new("Rock", "Paper")}
  subject(:logic_ps) {described_class.new("Paper", "Scissors")}
  let(:game) {double :game}

  context "player wins" do
    it "expects rock to beat scissors" do
      expect(logic_rs.player_wins?).to be true
    end

    it "expects paper to beat rock" do
      expect(logic_pr.player_wins?).to be true
    end

    it "expects scissors to beat paper" do
      expect(logic_sp.player_wins?).to be true
    end
  end

  context "computer wins" do
    it "expects rock to beat scissors" do
      expect(logic_sr.player_wins?).to be false
    end

    it "expects paper to beat rock" do
      expect(logic_rp.player_wins?).to be false
    end

    it "expects scissors to beat paper" do
      expect(logic_ps.player_wins?).to be false
    end
  end

end
