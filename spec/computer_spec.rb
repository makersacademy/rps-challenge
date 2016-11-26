require 'spec_helper'
require "./lib/player"

describe Computer do
  subject(:computer) { described_class.new }

  context "selection" do
    it "have a method to select rock, paper or scissors" do
      srand(1234)
      expect(computer.selection).to eq :scissors
      expect(computer.selection).to eq :paper
      expect(computer.selection).to eq :rock
    end
  end
end
