require 'game'

describe '#game' do

# let(:computer_rock){double :}

  it 'initializes with a player' do
    game = Game.new
    expect(game.player1).to eq 0
  end

  it 'initializes with a computer' do
    game = Game.new
    expect(game.computer).to eq 0
  end

  it 'can select an option at random' do
    game = Game.new
    expect(game.computer_select).not_to be nil
  end

  # it 'will give the score so far' do
  #   game = Game.new
  #   allow(game.rock).to receive('Paper').and_return('Loss!')
  #   expect(game.score).to eq('Player 0, Computer 1')
  # end

  # it 'player can win a round' do
  #   game = Game.new
  #   allow(game.rock).to receive('Paper').and_return('Loss!')
  #   expect(game.computer).to eq(1)
  # end

end
