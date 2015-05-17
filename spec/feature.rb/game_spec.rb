#   require 'game'

#   describe Game do

#     let(:player) {double :player}
#     let(:computer) {double :computer}

#     it 'can have a winner' do
#     allow(player).to receive(:choice).with("paper")
#     allow(computer).to receive(:random_shape).and_return "rock"
#     game = Game.new(player, computer)
#     expect(game.result).to eq "YOU WON"
#   end
# end