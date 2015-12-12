require 'player'

describe Player do
  subject(:player_1) { described_class.new("Emma")}

  describe 'default' do
    it "returns the player's name" do
      expect(player_1.name).to eq "Emma"
    end
  end

  it "returns the player's weapon of choice" do
    player_1.choose_weapon("Rock")
    expect(player_1.weapon).to eq "Rock"
  end

end
