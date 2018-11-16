require 'game'

describe Game do
  describe '#cpu_move' do
    it "can return a random move" do
      game = Game.new
      allow(game).to receive(:cpu_move) { "Paper" }
      expect(game.cpu_move).to eq "Paper"
    end
  end

end
