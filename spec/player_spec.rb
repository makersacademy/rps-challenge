require 'player'

describe Player do
  let(:player) { described_class.new('Bob') }
  let(:weapon) { [:rock, :paper, :scissors] }

  describe "it should register player's name" do
    it "prints the name of the player" do
      expect(player.name).to eq 'Bob'
    end
  end

end
