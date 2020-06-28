require 'game'

describe Game do

  describe '#play' do
    it 'passes on choice of the player' do
      game = Game.new
      expect(game).to respond_to :play
    end 
  end 

#   describe '#play' do
#     it 'a random choice' do
#       game = Game.new
#       game = double("Game")
#       allow(game).to receive(:computer).and_return("rock")
#       p game.computer
#       expect(game.computer).to eq 'rock'
#     end
#   end

end