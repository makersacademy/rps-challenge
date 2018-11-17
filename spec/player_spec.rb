require 'player'

describe Player do
  let(:karen) { Player.new("Karen") }
  let(:weapon) { double :weapon }
  let(:rock) { double :weapon, type: :rock }
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

  describe "initialize" do
    it "creates an instance of the Player class" do
      expect(karen.instance_of? Player).to be true
    end

    it "records the name variable" do
      expect(karen.name).to eq "Karen"
    end
  end

  describe "#choose_weapon" do
    it "lets a player choose a weapon" do
      karen.choose_weapon(rock)
      expect(karen.weapon_choice).to eq :rock
    end
  end
end
