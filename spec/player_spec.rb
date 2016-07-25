require 'player'
describe Player do
  subject(:player) { Player.new('Sarah') }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq 'Sarah'
    end
  end

  describe '#choice' do
    it "returns the player's choice" do
      player.choose("rock")
      expect(player.choice).to eq "Rock"
    end
  end


end
