require "computer"

describe Computer do
  subject(:computer) { described_class.new }
  
  describe "#pick_weapon" do
    it "should let computer pick up a weapon" do
      allow_any_instance_of(Array).to receive(:sample).and_return :paper
      computer.pick_weapon
      expect(computer.weapon).to eq :paper
    end
  end
end
