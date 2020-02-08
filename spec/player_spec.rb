require 'spec_helper'

describe Player do
  subject(:jason) { described_class.new("Jason") }
  describe "#name" do
    it 'returns the name of the player' do
      expect(jason.name).to eq "Jason"
    end
  end

  describe "#choice" do
    it "it records the player's choice" do
      expect(jason.choice("Paper")).to eq "Paper"
    end

    it 'records the computer option' do
      expect(%w(Rock Paper Scissors)).to include(Player.new("").choice(""))
    end
  end

  context "computer as player" do
    it 'defaults name as computer upon no input' do
      expect(Player.new("").name).to eq "Computer"
    end
  end
end
