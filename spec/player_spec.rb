describe Player do
  describe '#name' do
    it 'stores the players name' do
      player_1 = Player.new("Charlie")
      expect(player_1.name).to eq "Charlie"
    end
  end

  describe '#weapon' do
    it 'returns the chosen weapon' do
      player_1 = Player.new("Charlie")
      expect(player_1.weapon("rock")).to eq "rock"
    end
  end 
end
