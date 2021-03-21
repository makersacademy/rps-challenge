require_relative '../../game'

describe Game do
  describe '#new_game' do
    it 'sets up a game with two player objects' do
      expect(Game).to respond_to(:new_game).with(4).arguments
    end
    it 'allows the game to be started with one player' do
      expect(Game).to respond_to(:new_game).with(3).arguments
    end
    it 'stores the game in a class variable' do
      game = Game.new_game("Caesar", "real", "normal")
      expect(Game).to receive(:stored_game) { game }
      Game.stored_game
    end
  end
  describe '#Each turn' do
    before do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "normal", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
    end
    it "uses the player's turn choices to request a winner and an explanation" do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      rock_double = double("Rock double")
      game = Game.new(player1, "real", "normal", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn=)
      allow(player2).to receive(:turn=)
      allow(player1).to receive(:turn) { rock_double }
      allow(player2).to receive(:turn) { "Scissors" }
      expect(rock_double).to receive(:winner)
      expect(rock_double).to receive(:explanation)
      game.play("Rock", "Scissors")
    end
  end
end
