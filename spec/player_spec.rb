require 'player'

describe Player do
  let(:player) { described_class.new('Bob') }
  let(:weapon) { [:rock, :paper, :scissors] }

  describe "it should register player's name" do
    it "prints the name of the player" do
      expect(player.name).to eq 'Bob'
    end
  end

  # describe  "user selects one of the available weapon" do
  #   it "allows user to select one of the weapons" do
  #     weapon = "rock"
  #     expect(player.player_choice(weapon.to_sym)).to include?(weapon)
  #   end
  # end

end
