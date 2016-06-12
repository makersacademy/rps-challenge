require 'spec_helper'
require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2, log, referee) }
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  let(:log) { spy(:log) }
  let(:referee) { spy(:referee) }

  describe "#fight" do
    it "calls for result" do
      game.fight(:move)
      expect(referee).to have_received(:result)
    end

    it "tells log to store result" do
      game.fight(:move)
      expect(log).to have_received(:store)
    end

    it "increments turn counter" do
      expect { game.fight(:move) } .to change { game.turns }.by 1
    end
  end

  describe "#last_result" do
    it "calls last result from log" do
      game.last_result
      expect(log).to have_received(:last_result)
    end
  end

  describe "#score" do
    it "calls score from log" do
      game.score
      expect(log).to have_received(:score)
    end
  end
end
