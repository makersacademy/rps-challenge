require './lib/game'

describe Game do

  it 'has a game type' do
    @game = Game.new('Human Vs. Machine')
    expect(@game.game_type).to eq 'Human Vs. Machine'
  end

end
