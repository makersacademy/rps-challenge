require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { double :player , rps_choice: "Rock"}

    it 'rock beats scissors' do
      player = Player.new("Genny")
      player.select_rps("Rock")
      game.random_opponent_rps
      game.game_summary(player)
      expect(game.message).to eq "Well done - you win!!"
    end
end
