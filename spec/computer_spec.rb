require 'spec_helper'
require "./lib/player"

describe Computer do
  subject(:computer) { described_class.new }

  context "selection" do
    it "have a method to select rock, paper or scissors" do
      srand(1234)
      expect(computer.selection).to eq "Scissors"
      expect(computer.selection).to eq "Paper"
      expect(computer.selection).to eq "Rock"
    end
  end
end
