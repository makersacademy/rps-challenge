
describe Computer do

  subject(:comp) { described_class.new }

  describe "attributes" do
    it { is_expected.to respond_to(:weapon) }
  end

  describe "#weapon_of_choice" do
    it "returns a weapon from the weapon constant" do
      expect([:rock, :paper, :scissors]).to include(subject.weapon_of_choice)
    end
  end
end
