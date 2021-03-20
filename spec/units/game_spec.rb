require_relative '../../game'

describe Game do
  describe '#new_game' do
    it 'sets up a game with two player objects' do
      expect(Game).to respond_to(:new_game).with(3).arguments
    end
    it 'allows the game to be started with one player' do
      expect(Game).to respond_to(:new_game).with(2).arguments
    end
  end
  describe '#taking turns' do
    it "uses the player's turn choices to calculate the winner" do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, player2, "real")
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) {"Rock"}
      allow(player2).to receive(:turn) {"Scissors"}
      expect(game).to receive(:winner) {player1}
      game.winner
    end
  end
end
