describe Game do
  let(:game_singleton) { Game.send :new } # 'resets' the singleton for each test by providing a new instance
  let(:player_1) { double(:player_1, name: "Bob") }
  let(:player_2) { double(:player_2, name: "computer") }
  let(:draw) { "draw" }

  before do
    game_singleton.add_player(player_1)
    game_singleton.add_player(player_2)
  end

  describe '#add_player' do
    it 'stores instances of players' do
      expect(game_singleton.players).to include player_1
    end
  end

  describe '#get_result' do
    it 'returns the winner of the round' do
      allow(player_1).to receive :weapon { :paper }
      allow(player_2).to receive :weapon { :rock }
      expect(game_singleton.evaluate_result).to eq player_1.name
    end

    it 'returns a draw if both players choose the same weapon' do
      allow(player_1).to receive :weapon { :paper }
      allow(player_2).to receive :weapon { :paper }
      expect(game_singleton.evaluate_result).to eq nil
    end
  end

end
