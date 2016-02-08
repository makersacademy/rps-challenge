require 'player'

describe Player do

  subject(:player) { described_class.new("Sheldon") }

  describe "names saved to new instance of player class can be called" do
    it 'saves #player_1_name' do
      expect(player.name).to eq "Sheldon"
    end
  end


  describe "a weapon, (rock, paper or scissors) can be chosen by the player" do
    it 'allows a weapon to be chosen, saved to the weapon varaible and called' do
      player.set_weapon("rock")
      expect(player.weapon).to eq "rock"
    end
  end

end
