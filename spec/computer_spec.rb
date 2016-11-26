require 'spec_helper'
require "./lib/player"

describe Computer do
  subject(:computer) { described_class.new }

  context "selection" do
    it "have a method to select rock, paper or scissors" do
      expect(computer.selection).to eq :rock
    end
  end
end
