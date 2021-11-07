require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double :player1, :name => "John" }
  let(:player_2) { double :player2, :name => "Paul" }
  let(:game_logic) { double :game_logic, :result => "Win" }

  describe 'game starts with two players' do
    it 'assigns the players to their respecitve variable' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end

  describe 'result' do
    it ''
  end

end