require 'player'

describe Player do

  it 'can choose rock, paper or scissors' do
    game = Game.new Player
    expect(game.player_1.choose 'rock').to eq 'rock'
  end

  it 'is unable to choose anything other than rock, paper or scissors' do
    game = Game.new Player
    expect{ game.player_1.choose 'potato' }.to raise_error 'You must play with rock, paper or scissors!'
  end

end