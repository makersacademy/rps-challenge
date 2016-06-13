require 'spec_helper'
require 'log'

describe Log do
  subject(:log) { described_class.new }

  describe "#store" do
    it "stores result in history" do
      log.store(:result)
      expect(log.history).to include :result
    end
  end

  describe "#last_result" do
    it "returns the last result stored" do
      log.store(:result)
      expect(log.last_result).to eq :result
    end
  end

  describe "#score" do
    it "returns the current score" do
      log.store([:_, :_, :player1])
      expect(log.score).to eq "1-0"
    end
  end

end
