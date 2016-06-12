# require 'game'
# require 'computer'
# describe Game do
#   subject(:game) { described_class.new(:paper) }
#
#   it 'computer inputs rock and user inputs paper' do
#     computer = Computer.new
#     computer.stub(:computer_input).and_return(:rock)
#     expect(game.game_result).to eq 'You Win!'
#   end
# end
