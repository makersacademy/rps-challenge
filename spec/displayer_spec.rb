require 'displayer'

describe Displayer do

  subject(:displayer) { described_class.new }

  describe "#get_image" do

    let(:rock_icon) { '<i class="result_icon brown_text fas fa-hand-rock"></i>' }
    let(:paper_icon) { '<i class="result_icon white_text fas fa-hand-paper"></i>' }
    let(:scissors_icon) { '<i class="result_icon blue_text fas fa-hand-scissors"></i>' }
    let(:spock_icon) { '<i class="result_icon tan_text fas fa-hand-spock"></i>' }
    let(:lizard_icon) { '<i class="result_icon purple_text fas fa-hand-lizard"></i>' }

    it "returns the rock icon when passed 'rock'" do
      expect(displayer.get_image("rock")).to eq rock_icon
    end
    it "returns the paper icon when passed 'paper'" do
      expect(displayer.get_image("paper")).to eq paper_icon
    end
    it "returns the scissors icon when passed 'scissors'" do
      expect(displayer.get_image("scissors")).to eq scissors_icon
    end
    it "returns the spock icon when passed 'spock'" do
      expect(displayer.get_image("spock")).to eq spock_icon
    end
    it "returns the lizard icon when passed 'lizard'" do
      expect(displayer.get_image("lizard")).to eq lizard_icon
    end

  end

  describe "#get_result_string" do
    context "Rock vs. Paper" do
      it "Returns 'Paper covers rock'" do
        expect(displayer.get_result_string("paper", "rock")).to eq 'Paper covers Rock'
      end
    end
    context "Rock vs. Scissors" do
      it "Returns 'Rock smashes Scissors'" do
        expect(displayer.get_result_string("rock", "scissors")).to eq 'Rock smashes Scissors'
      end
    end
    context "Rock vs. Spock" do
      it "Returns 'Spock vaporizes Rock'" do
        expect(displayer.get_result_string("spock", "rock")).to eq 'Spock vaporizes Rock'
      end
    end
    context "Rock vs. Lizard" do
      it "Returns 'Rock crushes Lizard'" do
        expect(displayer.get_result_string("rock", "lizard")).to eq 'Rock crushes Lizard'
      end
    end
    context "Paper vs. Scissors" do
      it "Returns 'Scissors cuts Paper'" do
        expect(displayer.get_result_string("scissors", "paper")).to eq 'Scissors cuts Paper'
      end
    end
    context "Paper vs. Spock" do
      it "Returns 'Paper disproves Spock'" do
        expect(displayer.get_result_string("paper", "spock")).to eq 'Paper disproves Spock'
      end
    end
    context "Paper vs. Lizard" do
      it "Returns 'Lizard eats Paper'" do
        expect(displayer.get_result_string("lizard", "paper")).to eq 'Lizard eats Paper'
      end
    end
    context "Scissors vs. Spock" do
      it "Returns 'Spock bends Scissors'" do
        expect(displayer.get_result_string("spock", "scissors")).to eq 'Spock bends Scissors'
      end
    end
    context "Scissors vs. Lizard" do
      it "Returns 'Scissors decapitates Lizard'" do
        expect(displayer.get_result_string("scissors", "lizard")).to eq 'Scissors decapitates Lizard'
      end
    end
    context "Spock vs. Lizard" do
      it "Returns 'Lizard poisons Spock'" do
        expect(displayer.get_result_string("lizard", "spock")).to eq 'Lizard poisons Spock'
      end
    end
  end

  describe "#get_button" do

    let(:tie_button) { '<form action="/play_again" method="post">
      <button class="white" type="submit">Rematch!</button>
    </form>'
    }    
    let(:winner_button) { '<form action="/play_again" method="post">
      <button class="white" type="submit">Play Again</button>
    </form>'
    }    

    context "Game resulted in a tie" do
      it "Returns a string containing a button saying 'Rematch!'" do
        expect(displayer.get_button("tie")).to eq tie_button
      end
    end
    context "Game had a winner" do
      it "Returns a string containing a button saying 'Play Again'" do
        expect(displayer.get_button("winner")).to eq winner_button
      end
    end
  end

end
