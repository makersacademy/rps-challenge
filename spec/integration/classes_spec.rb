require 'player'
require 'rockpaperscissors'

describe "Class Integration Testing" do
  describe RockPaperScissors do
    it "can handle playing a game using the Player class as expected" do
      player1 = Player.new("Brian")
      player2 = Player.new("Partario")
      RockPaperScissors.new_game(player1, player2)
      game = RockPaperScissors.instance
      expect(game.play_round(:rock, :rock)).to eq(:draw)
      expect(game.play_round(:paper, :rock)).to eq(:win)
      expect(player1.score).to eq(1)
      expect(game.play_round(:rock, :paper)).to eq(:loss)
      expect(player2.score).to eq(1)
      (RockPaperScissors::WIN_CONDITION - 1).times { game.play_round(:paper, :rock) }
      expect(game.winner).to eq(player1)
    end
  end
end