describe Game do
  describe '#the_winner_is' do
    let(:computer) { double :computer, :choice => 'scissors' }
    let(:player_1) { double :player, :choice => 'rock' }
    let(:computer2) { double :computer, :choice => 'paper' }

    it 'returns true when player wins' do
      weapon = Game.new(player_1.choice)
      expect(weapon.beats?(computer.choice)).to eq "win"
    end

    it "returns false when computer wins" do
      weapon = Game.new(player_1.choice)
      expect(weapon.beats?(computer2.choice)).to eq "lose"
    end

    it "returns 'draw' when it's a draw" do
      weapon = Game.new(player_1.choice)
      expect(weapon.beats?(player_1.choice)).to eq "draw"
    end
  end
end
