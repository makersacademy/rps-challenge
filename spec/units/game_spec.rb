require 'game'

describe Game do
  before(:each) do
    @player = double('player')
    @computer = double('computer')
    @game = Game.new(@player, @computer)
  end

  it 'Player wins' do
    allow(@player).to receive(:choice).and_return(:Rock)
    allow(@computer).to receive(:choice).and_return(:Scissors)
    @game.determine_winner
    expect(@game.winner).to eq true
  end
 
  it 'Computer wins' do
    allow(@player).to receive(:choice).and_return(:Paper)
    allow(@computer).to receive(:choice).and_return(:Scissors)
    @game.determine_winner
    expect(@game.winner).to eq false
  end
end
    
