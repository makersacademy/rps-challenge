require 'spec_helper'
require "./lib/player"

describe Logic do

  subject(:logic_rs) {described_class.new(:rock, :scissors)}
  subject(:logic_pr) {described_class.new(:paper, :rock)}
  subject(:logic_sp) {described_class.new(:scissors, :paper)}
  subject(:logic_sr) {described_class.new(:scissors, :rock)}
  subject(:logic_rp) {described_class.new(:rock, :paper)}
  subject(:logic_ps) {described_class.new(:paper, :scissors)}
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
