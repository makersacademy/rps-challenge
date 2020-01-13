require 'game'

describe Game do

  let(:player1){ double(:player1, name: "Player") }
  let(:player2){ double(:player2, name: "Comp") }

  subject(:game){Game.new(player1,player2)}

  describe "#return_player" do
    it "returns a player" do
      expect(game.return_player(1)).to eq player1
    end
  end

  describe "#game_message" do
    context 'the game is beginning' do
      it 'give greeting message' do
        expect(game.game_message).to eq "Click a Button, Good Luck!"
      end
    end


    context 'the game has begun' do
      xit 'tells the player what the moves where' do
        srand(3)
        game.random_choice
        game.play("Paper") #same add_points issue see README
        expect(game.game_message).to eq "Player played Paper and Comp played Scissors"
      end
    end
  end

  describe "#play" do
    context "player1 wins" do
      xit 'adds a point to player1s score' do
        srand(3)
        game.random_choice
        expect(player1).to receive(:add_point)
        game.play("Rock")
      end
    end

    context "The computer wins" do
      xit 'adds a point to the computers score' do
        srand(3)
        game.random_choice
        expect(player2).to receive(:add_point)
        game.play("Scissors")
      end
    end
  end

  describe "#random_choice" do
    it "comupter chooses through random sampling" do
      srand(2)
      expect(game.random_choice).to eq "Rock"
    end
  end
end
