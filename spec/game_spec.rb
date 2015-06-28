require 'game'


describe Game do 

it 'can determine if the player has won' do
  player = (double :player, rock: true)
  computer = (double :computer, choose: :scissors)
  game = Game.new player, computer
  expect(game.player_wins?).to eq true
end


end