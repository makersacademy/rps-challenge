require './lib/player'

describe Player do

  let(:name) { double :name }
  subject(:player) { Player.new(name) }

  describe "#name" do

    it "should return the player's name" do
      expect(subject.name).to eq(name)
    end

    it "should return the player's choice" do
      expect(player.choice("Paper")).to eq(:paper)
    end

  end
end
