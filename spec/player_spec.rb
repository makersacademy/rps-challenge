require 'player'

describe Player do
  subject(:rocky) { Player.new('Rocky') }

  describe '#name' do
    it "returns the name" do
      expect(rocky.name).to eq('Rocky')
    end
  end

  describe '#move' do
    it "returns the move" do
      rocky.choose("Rock")
      expect(rocky.move).to eq("Rock")
    end
  end
end
