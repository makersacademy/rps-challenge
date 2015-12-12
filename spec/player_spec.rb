require 'player'

describe Player do
  subject(:player_1) { described_class.new("Emma", false)}
  subject(:computer) { described_class.new("Computer", true)}

  describe 'default' do
    it "returns the player's name" do
      expect(player_1.name).to eq "Emma"
    end
  end

  describe '#choose_weapon' do
    context "when it's player 1's turn" do
      it "returns the player's weapon of choice" do
        player_1.choose_weapon("Rock")
        expect(player_1.weapon).to eq "Rock"
      end
    end

    context "when it's the computer's turn" do
      it "returns the computer's weapon of choice" do
        allow(Kernel).to receive(:rand) { 1 }
        computer.choose_weapon(computer.weapon_choices[Kernel.rand(0..2)])
        expect(computer.weapon).to eq "Paper"
      end
    end

  end

end
