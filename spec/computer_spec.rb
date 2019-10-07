require 'computer'

describe Computer do
  let(:computer) { Computer.new("Computer") }
  let(:weapon) { double :weapon }

  describe "initialize" do
    it "records the name variable" do
      expect(computer.name).to eq "Computer"
    end
  end

  describe "#choose_weapon" do
    it "chooses a weapon randomly" do
      stub_const("Weapon::WEAPONS", [:lizard, :spock])
      computer.choose_weapon
      expect(Weapon::WEAPONS).to include computer.weapon_choice
    end
  end
end
