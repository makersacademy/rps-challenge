describe Game do
  let(:game_singleton) { Game.send :new } # 'resets' the singleton for each test by providing a new instance
  let(:player_1) { double(:player_1, name: "Bob") }
  let(:player_2) { double(:player_2, name: "computer") }
  let(:draw) { "draw" }

  before do
    game_singleton.add_players([player_1, player_2])
    allow(player_1).to receive :add_win
    allow(player_2).to receive :add_win
  end

  describe '#add_player' do
    it 'stores instances of players' do
      expect(game_singleton.player_1).to eq player_1
    end
  end

  describe '#get_result' do
    it 'returns the winner of the round' do
      allow(player_1).to receive :weapon { :paper }
      allow(player_2).to receive :weapon { :rock }
      game_singleton.evaluate_result
      expect(game_singleton.round_winner).to eq player_1
    end

    it 'returns a draw if both players choose the same weapon' do
      allow(player_1).to receive :weapon { :paper }
      allow(player_2).to receive :weapon { :paper }
      game_singleton.evaluate_result
      expect(game_singleton.round_winner).to eq nil
    end
  end

end
