require 'player'

describe Player do
  let(:karen) { Player.new("Karen") }
  let(:weapon) { double :weapon }
  let(:rock) { double :weapon, type: :rock }

  describe "#choose_weapon" do
    it "lets a player choose a weapon" do
      karen.choose_weapon(rock)
      expect(karen.weapon_choice).to eq :rock
    end
  end
end
