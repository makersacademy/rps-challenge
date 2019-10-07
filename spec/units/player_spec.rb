require 'player'

describe Player do
  let(:alice) { Player.new("Alice") }

  describe '#name' do
    it "returns player's name" do
      expect(alice.name).to eq("Alice")
    end
  end

  describe '#choice' do
    it "is nil by default" do
      expect(alice.choice).to eq(nil)
    end
  end
end
