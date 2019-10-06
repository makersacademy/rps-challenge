require 'player'

describe Player do
  let(:player){ Player.new("Dove") }

    it "knows its name" do
      expect(player.name).to eq("Dove")
    end
  end