require 'game'

describe Game do
  let(:player) { double :player }
  let(:player_class) { double :player_class }
  before :each do
    allow(player_class).to receive(:new) { player }
    allow(player).to receive(:player_hand) { :rock }
  end

  let(:game) { Game.new(player, player_class) }

  context "#initialize" do
    it "creates player instance" do
      expect(game.player).to eq player
    end
  end

  context "play_rps" do
    it "if player hand is rock and AI hand is scissor player wins" do
      srand(3)
      expect(game.play_rps).to eq "You Win!"
    end

    it "if player hand matches AI hand its a draw" do
      srand(12)
      game.play_rps
      allow(player).to receive(:player_hand) { game.ai_hand }
      expect(game.play_rps).to eq "Draw!"
    end

    it "if player hand is paper and AI hand is scissor player wins" do
      srand(3)
      allow(player).to receive(:player_hand) { :paper }
      expect(game.play_rps).to eq "You Lose!"
    end
  end
end
