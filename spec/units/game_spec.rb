require 'game'

describe Game do
  before(:each) do
    @player = double('player')
    @computer = double('computer')
  end

  it 'Player wins' do
    allow(@player).to receive(:choice).and_return(:Rock)
    allow(@computer).to receive(:choice).and_return(:Scissors)
    @game = Game.new(@player, @computer)
    @game.determine_winner
    expect(@game.winner).to eq true
  end
 
  it 'Computer wins' do
    allow(@player).to receive(:choice).and_return(:Rock)
    allow(@computer).to receive(:choice).and_return(:Paper)
    @game = Game.new(@player, @computer)
    @game.determine_winner
    expect(@game.winner).to eq false
  end
end
    
