require "game"

describe Game do

  let(:player_r) { double "Player.new", name: "Melvin", move: "Rock" }
  let(:player_p) { double "Player.new", name: "Melvin", move: "Paper" }
  let(:player_s) { double "Player.new", name: "Melvin", move: "Scissors" }

  let(:computer_r) { double "Computer.new", move: "Rock" }
  let(:computer_p) { double "Computer.new", move: "Paper" }
  let(:computer_s) { double "Computer.new", move: "Scissors" }

  let(:game_class) { described_class }

  describe "#self.create initializes a game" do

    let(:game_instance) { game_class.create(player_r, computer_r) }

    it "with access to player #name method" do
      expect(game_instance.player.name).to eq player_r.name
    end

    it "with access to computer #move method" do
      expect(game_instance.computer.move).to eq computer_r.move
    end

  end

  describe "#self.instance" do

    it "stores the instance of Game" do
      a_game = game_class.create(player_r, computer_r)
      expect(game_class.instance).to eq a_game
    end

  end

  describe "#result" do

    context "Player chooses Rock" do

      it "player wins when computer chooses Scissors" do
        game = game_class.create(player_r, computer_s)
        expect(game.result).to eq "#{player_r.name} wins!"
      end

      it "computer wins when computer chooses Paper" do
        game = game_class.create(player_r, computer_p)
        expect(game.result).to eq "Computer wins!"
      end

      it "it's a draw when computer chooses Rock" do
        game = game_class.create(player_r, computer_r)
        expect(game.result).to eq "It's a draw!"
      end

    end

    context "Player chooses Paper" do

      it "player wins when computer chooses Rock" do
        game = game_class.create(player_p, computer_r)
        expect(game.result).to eq "#{player_p.name} wins!"
      end

      it "computer wins when compy chooses Scissors" do
        game = game_class.create(player_p, computer_s)
        expect(game.result).to eq "Computer wins!"
      end

      it "it's a draw when computer chooses Paper" do
        game = game_class.create(player_p, computer_p)
        expect(game.result).to eq "It's a draw!"
      end

    end

    context "Player chooses Scissors" do

      it "player wins when computer chooses Paper" do
        game = game_class.create(player_s, computer_p)
        expect(game.result).to eq "#{player_s.name} wins!"
      end

      it "computer wins when computer chooses Rock" do
        game = game_class.create(player_s, computer_r)
        expect(game.result).to eq "Computer wins!"
      end

      it "it's a draw when computer chooses Scissors" do
        game = game_class.create(player_s, computer_s)
        expect(game.result).to eq "It's a draw!"
      end

    end

  end

end
