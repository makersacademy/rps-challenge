require 'player.rb'

describe Player do
  let(:name) {:John}
  subject(:john) { described_class.new(name) }

  describe "#name" do
    it "returns the player's name" do
      expect(john.name).to eq :John
    end
  end

end
