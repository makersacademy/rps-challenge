require 'game'

describe Game do
  subject(:game) { Game.new(options) }
  subject(:options) { Game::DEFAULT_OPTIONS }

  it 'initializes an array of options as default' do
    expect(options).to eq([:rock, :paper, :scissors])
  end

  it 'prints the list of options so player can see' do
    printed_options = "Rock, Paper, Scissors"
    expect(game.print).to eq(printed_options)
  end
end


#  it 'returns player choice' do

#    expect ([ 'rock', 'paper', 'scissors' ].include?
#  end
#end
#before showing results, I need to ask to show computer choice""

#describe '#show_results' do
#  it 'returns the comparison between PC and Players results' do
#    expect(player.show_results).to eq 'rock'
#  end
#end