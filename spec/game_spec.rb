describe Game do
  let(:player_1) { double(:player_1, name: "Bob") }
  let(:player_2) { double(:player_2, name: "computer") }
  let(:draw) { "draw" }

  before do
    Game.instance.add_player(player_1)
    Game.instance.add_player(player_2)
  end

  describe '#add_player' do
    it 'stores instances of players' do
      expect(Game.instance.players).to include player_1
    end
  end

  describe '#get_result' do
    it 'returns the winner of the round' do
      allow(player_1).to receive :weapon { :paper }
      allow(player_2).to receive :weapon { :rock }
      expect(Game.instance.get_result).to eq player_1.name
    end

    it 'returns a draw if both players choose the same weapon' do
      allow(player_1).to receive :weapon { :paper }
      allow(player_2).to receive :weapon { :paper }
      expect(Game.instance.get_result).to eq draw
    end
  end

end
