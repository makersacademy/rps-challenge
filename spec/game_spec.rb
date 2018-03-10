require "./lib/game"

describe Game do
   let(:player1) { double 'player1'}

  context '.create' do
    it "creates a new instance of a game" do
      game = Game.create(player1)
      expect(game).to be_an_instance_of (Game)
    end
  end
end
