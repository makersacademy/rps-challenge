describe Game do
  let(:player_1) { double(:player, name: "Bob") }

  describe '#add_player' do
    it 'stores instances of players' do
      Game.instance.add_player(player_1)
      expect(Game.instance.players).to include player_1
    end
  end

end
