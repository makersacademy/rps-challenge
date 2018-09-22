require 'player'

describe Player do
  subject(:player) { described_class.new("Carolina") }
  context "creates a new player" do
    it "#new" do
      expect { player }.not_to raise_error
    end

    it "#name" do
      expect(player.name).to eq "Carolina"
    end
  end
end