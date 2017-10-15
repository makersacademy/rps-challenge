require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe "#choose" do
    it "assigns @weapon_choice a weapon" do
      computer.choose
      expect(Computer::WEAPONS).to include computer.weapon_choice.class.to_s
    end
  end

  describe "#name" do
    it "returns default name" do
      expect(subject.name).to eq Computer::COMPUTER_NAME
    end
  end

end
