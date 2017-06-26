require 'player.rb'

describe Player do
  let(:name) {:John}
  subject(:john) { described_class.new(name) }

  describe "#name" do
    it "returns the player's name" do
      expect(john.name).to eq :John
    end
  end

  describe "#select_move" do
    it "should change move to specified attack" do
      john.select_move(:rock)
      expect(john.move).to eq(:rock)
    end
  end


end
