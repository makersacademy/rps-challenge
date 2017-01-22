require 'spec_helper'
require "./lib/player"

describe Computer do
  subject(:computer) { described_class.new }

  context "selection" do
    it "have a method to select rock, paper, scissors, spock, or lizard" do
      srand(1234)
      expect(computer.selection).to eq "Spock"
      expect(computer.selection).to eq "Lizard"
      expect(computer.selection).to eq "Lizard"
      expect(computer.selection).to eq "Rock"
      expect(computer.selection).to eq "Paper"
    end
  end
end
