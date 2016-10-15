require 'spec_helper'
require 'player'

describe Player do

  subject {described_class.new("Steve")}
  let(:steve) {double(:name)}


  describe '#initialize' do
    it "sets the player's name to the string passed in" do
      expect(subject.name).to eq "Steve"
    end

    it "defaults the to 'the Computer' if not string passed" do
      computer_player = Player.new
      expect(computer_player.name).to eq "the Computer"
    end
  end
  
end
