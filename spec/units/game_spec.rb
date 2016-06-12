require "game"

describe Game do
  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe "#initialize" do
    it "has a player_1" do
      expect(game.player_1).to eq player_1
    end

    it "has a player_2" do
      expect(game.player_2).to eq player_2
    end

  describe "#winner" do
    context "player_1 wins" do
      context "player_1 = rock, player_2 = scissors" do
      # 'rock/scissors' => "Player 1 won!"
        let(:player_1) { double :player_1, weapon: :rock }
        let(:player_2) { double :player_2, weapon: :scissors }
        it "rock beats scissors: player_1 wins" do
          expect(game.winner).to eq player_1
        end
      end
      context "player_1 = paper, player_2 = rock" do
      # 'paper/rock' => "Player 1 won!"
        let(:player_1) { double :player_1, weapon: :paper }
        let(:player_2) { double :player_2, weapon: :rock }
        it "paper beats rock, player_1 wins" do
          expect(game.winner).to eq player_1
        end
      end
      context "player_1 = scissors, player_2 = paper" do
      # 'scissors/paper' => "Player 1 won!"
        let(:player_1) { double :player_1, weapon: :scissors }
        let(:player_2) { double :player_2, weapon: :paper }
        it "scissors beats paper, player_1 wins" do
          expect(game.winner).to eq player_1
        end
      end

    end

    context "player_2 wins" do
      context "player_1 = rock, player_2 = paper" do
        # 'rock/paper' => "Player 2 won!",
        let(:player_1) { double :player_1, weapon: :rock }
        let(:player_2) { double :player_2, weapon: :paper }
        it "paper beats rock: player_2 wins" do
          expect(game.winner).to eq player_2
        end
      end

      context "player_1 = paper, player_2 = scissors" do
        # 'paper/scissors' => "Player 2 won!"
        let(:player_1) { double :player_1, weapon: :paper }
        let(:player_2) { double :player_2, weapon: :scissors }
        it "scissors beats paper: player_2 wins" do
          expect(game.winner).to eq player_2
        end
      end

      context "player_1 = scissors, player_2 = rock" do
        # 'scissors/rock' => "Player 2 won!"
        let(:player_1) { double :player_1, weapon: :scissors }
        let(:player_2) { double :player_2, weapon: :rock }
        it "rock beats scissors, player_2 wins" do
          expect(game.winner).to eq player_2
        end
      end

    end

    context "draws" do
      context "plyer_1 = rock, player_2 = rock" do
        let(:player_1) { double :player_1, weapon: :rock }
        let(:player_2) { double :player_2, weapon: :rock }
        it "rock and rock draws" do
          expect(game.winner).to eq nil
        end
      end
      context "plyer_1 = paper, player_2 = paper" do
        let(:player_1) { double :player_1, weapon: :paper }
        let(:player_2) { double :player_2, weapon: :paper }
        it "paper and paper draws" do
          expect(game.winner).to eq nil
        end
      end
      context "plyer_1 = scissors, player_2 = scissors" do
        let(:player_1) { double :player_1, weapon: :scissors }
        let(:player_2) { double :player_2, weapon: :scissors }
        it "paper and paper draws" do
          expect(game.winner).to eq nil
        end
      end
    end

  end


  # 'rock/rock' => "Draw!",
  # 'scissors/scissors' => "Draw!",
  # 'paper/paper' => "Draw!"
  end

end
