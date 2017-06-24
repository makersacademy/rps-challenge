

describe Player do

  let(:name) { :Maker }
  let(:weapon) { :paper }
  subject(:player) { described_class.new(name)}

  describe "attributes" do
    context "on init" do
      it {is_expected.to respond_to(:name)}
      it {is_expected.to respond_to(:weapon)}
    end
  end

  describe "#weapon_of_choice_is" do
    it "assigns a weapon" do
      expect{player.weapon_of_choice_is(weapon)}.to change{player.weapon}.from(nil).to(:paper)
    end
  end
end
