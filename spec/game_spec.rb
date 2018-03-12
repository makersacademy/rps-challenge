require "./lib/game"

describe Game do
   let(:player1) { double 'player1'}

  context '.create' do
    it "creates a new instance of a game" do
      game = Game.create(player1)
      expect(game).to be_an_instance_of (Game)
    end
  end

  context '.select_move' do
    it "selects Rock/Paper or Sciccors" do
      game = Game.create(player1)
      game.select_move("Rock")
      expect(game.move).to eq ("Rock")
    end
  end
end
