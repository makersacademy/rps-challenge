require 'player'

describe Player do
  subject { Player.new("Mittens") }

  context '#initialize' do
    it "returns the player's name" do
      expect(subject.name).to eq "Mittens"
    end
  end
end
