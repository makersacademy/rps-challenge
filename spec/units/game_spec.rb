require_relative '../../game'

describe Game do
  describe '#new_game' do
    it 'sets up a game with two player objects' do
      expect(Game).to respond_to(:new_game).with(4).arguments
    end
    it 'allows the game to be started with one player' do
      expect(Game).to respond_to(:new_game).with(3).arguments
    end
  end
  describe '#taking turns' do
    before do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "normal", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
    end
    it "uses the player's turn choices to calculate the winner" do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "normal", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) { "Rock" }
      allow(player2).to receive(:turn) { "Scissors" }
      expect(game).to receive(:winner) {player1}
      game.winner
    end
  end
  context '#the game correctly identifies the winner' do
    it 'Rock is selected as the winner over scissors' do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "normal", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) { "Rock" }
      allow(player2).to receive(:turn) { "Scissors"}
      expect(game.winner).to eq "Caesar"
    end
    it 'Scissors is selected as the winner over paper' do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "normal", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) { "Paper" }
      allow(player2).to receive(:turn) { "Scissors" }
      expect(game.winner).to eq "Computer"
    end
    it 'Paper is selected as the winner over rock' do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "normal", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) { "Rock" }
      allow(player2).to receive(:turn) { "Paper" }
      expect(game.winner).to eq "Computer"
    end
    it 'Spock is selected as the winner over scissors' do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "special", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) { "Spock" }
      allow(player2).to receive(:turn) { "Scissors" }
      expect(game.winner).to eq "Caesar"
    end
    it 'Spock is selected as the winner over rock' do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "special", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) { "Spock" }
      allow(player2).to receive(:turn) { "Rock" }
      expect(game.winner).to eq "Caesar"
    end
    it 'Lizard is selected as the winner over paper' do
      player1 = double("Player 1 double", :name => "Caesar", :type => "real")
      player2 = double("Player 2 double", :name => "Computer", :type => "virtual")
      game = Game.new(player1, "real", "special", player2)
      game.instance_variable_set(:@player1, player1)
      game.instance_variable_set(:@player2, player2)
      allow(player1).to receive(:turn) { "Paper" }
      allow(player2).to receive(:turn) { "Lizard" }
      expect(game.winner).to eq "Computer"
    end
  end

end
