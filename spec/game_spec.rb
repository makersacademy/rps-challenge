require "./lib/game"

describe Game do
  context '.create' do
    it "creates a new game" do
      player1 = double("player1")

      expect(Game.create(player1).to eq (Game.new))
    end
  end
end
