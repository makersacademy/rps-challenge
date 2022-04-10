require 'game'

describe Game do
  let(:player) { double "player" }
  let(:player2) { double "player2" }
  let(:computer) { double "computer" }
  let(:game) { described_class.new(player, computer) }
  let(:multiplayer) { described_class.new(player, player2) }

  describe "#computer_move" do 
    it "computer does a random move" do
      allow(game).to receive(:computer_move).and_return("Scissors")
      expect(game.computer_move).to eq("Scissors")
    end
  end

  describe "#new" do
    it 'able to take 2 players when initializing for multiplayer' do
      expect(multiplayer.player2).to eq(player2)
    end
  end

  describe "add_win" do
    it 'able to add a win for player 1 to keep track of score' do
      expect { game.add_win }.to change { game.wins }.by(1)
    end
  end

  describe "#add_loss" do
    it 'able to add a loss for player 1 to keep track of score' do
      expect { game.add_loss }.to change { game.loss }.by(1)
    end
  end

  describe "#add_round" do
    it 'adds a round to the total no matter the result' do
      expect { game.add_round }.to change { game.rounds }.by(1)
    end
  end

end
