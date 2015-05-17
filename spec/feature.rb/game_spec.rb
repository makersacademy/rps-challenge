#   require 'game'

#   describe Game do

#     it "player wins"

#     it 'can have a winner' do
#     player = double :player
#     computer = double :computer
#     game = Game.new(player, computer)
#     allow(computer).to receive(:random_choice).and_return "rock"
#     allow(player).to receive(:choice).with("paper")
#     expect(game.result).to eq "YOU WON"
#   end
# end