require 'game'
require 'player'
require 'computer'

describe Game do
  let(:freddie) { double :player_1 }
  let(:computer) { double :computer }

  describe "#name" do
    it "returns the name" do
      subject(:rps) { Game.new(freddie("Freddie")) }
      expect(rps.freddie.name).to eq "Freddie"
    end
  end

  describe "#weapon" do
    it "returns player 2 weapon" do
      subect(subject.player_2.weapon).to eq true
    end
  end
end

  # it "allows you to select a weapon" do
  #   expect(dave.weapon = :rock).to eq :rock
  # end
  #
  # it "raises an error if weapon not in array" do
  #   message = 'not a possible weapon'
  #   expect { dave.weapon = "bat" }.to raise_error message
  # end
