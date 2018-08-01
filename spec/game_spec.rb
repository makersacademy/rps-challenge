require 'game'

describe Game do

  subject(:game)         { described_class.new(player)        }
  let(:player)           { double :player                     }
  let(:rock_chooser)     { double :player, choice: "rock"     }
  let(:paper_chooser)    { double :player, choice: "paper"    }
  let(:scissors_chooser) { double :player, choice: "scissors" }
  let(:spock_chooser)    { double :player, choice: "spock"    }
  let(:lizard_chooser)   { double :player, choice: "lizard"   }
  let(:fake_displayer)   { double :display_instance }

  it "Knows it's player" do
    expect(game.player1).to eq player
  end

  describe "#play_1_bot_match" do
    it "Calls make_choice on player1 and make_random_choice on player2" do
      expect(game.player1).to receive(:make_choice)
      expect(game.player2).to receive(:make_random_choice)
      game.play_1_bot_match("rock")
    end
  end

  describe "#winner" do
    context "Rock smashes scissors" do
      it "Returns the the player if player wins" do
        game = Game.new(rock_chooser, scissors_chooser)
        expect(game.winner).to eq rock_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(scissors_chooser, rock_chooser)
        expect(game.winner).to eq rock_chooser
      end
    end
    context "Rock crushes lizard" do
      it "Returns the the player if player wins" do
        game = Game.new(rock_chooser, lizard_chooser)
        expect(game.winner).to eq rock_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(lizard_chooser, rock_chooser)
        expect(game.winner).to eq rock_chooser
      end
    end
    context "Paper covers rock" do
      it "Returns the the player if player wins" do
        game = Game.new(paper_chooser, rock_chooser)
        expect(game.winner).to eq paper_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(rock_chooser, paper_chooser)
        expect(game.winner).to eq paper_chooser
      end
    end
    context "Paper disproves spock" do
      it "Returns the the player if player wins" do
        game = Game.new(paper_chooser, spock_chooser)
        expect(game.winner).to eq paper_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(spock_chooser, paper_chooser)
        expect(game.winner).to eq paper_chooser
      end
    end
    context "Scissors cuts paper" do
      it "Returns the the player if player wins" do
        game = Game.new(scissors_chooser, paper_chooser)
        expect(game.winner).to eq scissors_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(paper_chooser, scissors_chooser)
        expect(game.winner).to eq scissors_chooser
      end
    end
    context "Scissors decapitates lizard" do
      it "Returns the the player if player wins" do
        game = Game.new(scissors_chooser, lizard_chooser)
        expect(game.winner).to eq scissors_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(lizard_chooser, scissors_chooser)
        expect(game.winner).to eq scissors_chooser
      end
    end
    context "Spock vaporizes rock" do
      it "Returns the the player if player wins" do
        game = Game.new(spock_chooser, rock_chooser)
        expect(game.winner).to eq spock_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(rock_chooser, spock_chooser)
        expect(game.winner).to eq spock_chooser
      end
    end
    context "Spock bends scissors" do
      it "Returns the the player if player wins" do
        game = Game.new(spock_chooser, scissors_chooser)
        expect(game.winner).to eq spock_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(scissors_chooser, spock_chooser)
        expect(game.winner).to eq spock_chooser
      end
    end
    context "Lizard poisons spock" do
      it "Returns the the player if player wins" do
        game = Game.new(lizard_chooser, spock_chooser)
        expect(game.winner).to eq lizard_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(spock_chooser, lizard_chooser)
        expect(game.winner).to eq lizard_chooser
      end
    end
    context "Lizard eats paper" do
      it "Returns the the player if player wins" do
        game = Game.new(lizard_chooser, paper_chooser)
        expect(game.winner).to eq lizard_chooser
      end
      it "Returns the the computer if computer wins" do
        game = Game.new(paper_chooser, lizard_chooser)
        expect(game.winner).to eq lizard_chooser
      end
    end
  end

  describe "#loser" do
    context "Rock smashes scissors" do
      it "Returns the the computer if player wins" do
        game = Game.new(rock_chooser, scissors_chooser)
        expect(game.loser).to eq scissors_chooser
      end
      it "Returns the the player if computer wins" do
        game = Game.new(scissors_chooser, rock_chooser)
        expect(game.loser).to eq scissors_chooser
      end
    end
  end

  describe "#tie_game?" do
    it "Returns true if the game was a tie" do
      game = Game.new(rock_chooser, rock_chooser)
      expect(game.tie_game?).to be true
    end
    it "Returns false if the game was not a tie" do
      game = Game.new(rock_chooser, scissors_chooser)
      expect(game.tie_game?).to be false
    end
  end

  context "Testing displaying" do

    before do
      game.instance_variable_set(:@displayer, fake_displayer)
    end

    describe "#get_image" do
      it "Delegates getting of image to displayer instance" do
        expect(fake_displayer).to receive(:get_image)
        game.get_image("rock")
      end
    end

    describe "#get_result_string" do
      it "Delegates getting of result string to displayer instance" do
        expect(fake_displayer).to receive(:get_result_string)
        game.get_result_string("rock", "scissors")
      end
    end

    describe "#get_button" do
      it "Delegates getting of button to displayer instance" do
        expect(fake_displayer).to receive(:get_button)
        game.get_button("winner")
      end
    end
  end

end
