require_relative '../lib/game.rb'

describe Game do
  let(:game) { Game.new("false","Rae") }

  describe '#result_string(player_move)' do
    it "returns won, drew or lost for player" do
      allow_any_instance_of(Array).to receive(:sample) { "Rock" }
      game.player_1_move = "Paper"
      expect(game.result_string).to eq("Rae won")
      game.player_1_move = "Rock"
      expect(game.result_string).to eq("draw")
      game.player_1_move = "Scissors"
      expect(game.result_string).to eq("Computer won")
    end
  end
end
