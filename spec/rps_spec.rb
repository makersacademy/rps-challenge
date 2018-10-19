require './lib/rps.rb'

describe Rps do
  describe "#computer" do
    subject(:game) {described_class.new("Rock")}
    let(:mock) {double(:Rps, :chance => 1)}
    it "computer selects Rock" do
      expect(game.computer(mock.chance)).to eq ["R"]
    end
  end

  describe "#computer" do
    subject(:game) {described_class.new("Rock")}
    let(:mock) {double(:Rps, :chance => 2)}
    it "computer selects Paper" do
      expect(game.computer(mock.chance)).to eq ["P"]
    end
  end

  describe "#computer" do
    subject(:game) {described_class.new("Rock")}
    let(:mock) {double(:Rps, :chance => 3)}
    it "computer selects Scissors" do
      expect(game.computer(mock.chance)).to eq ["S"]
    end
  end
end
