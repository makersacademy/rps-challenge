require 'game'

describe Game do

  subject(:game) { Game.new('Tomas', "Computer") }

  describe '#self.instance' do
     it 'allows access to an instance of Game' do
       game = Game.create("Tomas", "Computer")
       expect(Game.instance).to eq game
     end
   end

   describe '#self.create' do
     it 'creates a new instance of Game' do
       game = Game.create("Tomas", "Computer")
       expect(game).to eq game
     end
   end
 end
