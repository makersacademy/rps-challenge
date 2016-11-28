require 'game'

describe Game do
subject(:game) { described_class.new(choices) }
let(:choices) { {"player_name" => "Mike", "player_choice" => :rock, "computer_choice" => :scissors} }

  describe '#player_name' do
    it "returns the player's name" do
      expect(game.player_name).to eq "Mike"
    end
  end

  describe '#player_choice' do
    it "returns the player's choice" do
      expect(game.player_choice).to eq :rock
    end
  end

  describe '#computer_choice' do
    it "returns the computer's choice" do
      expect(game.computer_choice).to eq :scissors
    end
  end

  context 'result of the game' do
    subject(:win_game) { game }
    subject(:lose_game) { described_class.new(lose_options) }
    subject(:draw_game) { described_class.new(draw_options) }

    let(:lose_options) { {"player_name" => "Mike", "player_choice" => :rock, "computer_choice" => :paper} }
    let(:draw_options) { {"player_name" => "Mike", "player_choice" => :rock, "computer_choice" => :rock } }

    describe '#win?' do
      it "returns true if the player's choice is 'rock' and the computer's choice is 'scissors'" do
        expect(win_game.win?).to eq true
      end
    end

    describe '#lose?' do
      it "returns true if the player's choice is 'rock' and the computer's choice is 'paper'" do
        expect(lose_game.lose?).to eq true
      end
    end

    describe '#draw?' do
      it "returns true if the player's choice is 'rock' and the computer's choice is 'rock'" do
        expect(draw_game.draw?).to eq true
      end
    end
  end

end
