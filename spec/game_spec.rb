require 'game'

describe Game do
  let(:player1) { double }
  let(:game) { Game.new(player1) }

  context '#initialize' do
    it 'holds players in an array called by an instance variable' do
      expect(game.players[0]).to eq player1
    end
  end
end