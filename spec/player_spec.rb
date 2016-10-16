require 'player'

describe Player do
  subject(:player) {described_class.new('Bob')}

  describe "#initialize" do
    it 'takes a name parameter' do
      expect(player.name).to eq "Bob"
    end
    it 'starts with 0 point' do
      expect(player.points).to eq 0
    end
  end

  describe "#add_points" do
    it "wins 1 points when wins the move" do
      expect{player.add_points}.to change{player.points}.by 1
    end
  end
end
