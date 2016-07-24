require 'player'

describe Player do
  describe '#name' do
    subject(:player) { described_class.new("Broseph") }
    it "returns player's name" do
      expect(subject.name).to eq "Broseph"
    end
  end
end
