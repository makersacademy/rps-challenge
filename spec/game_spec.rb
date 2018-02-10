require 'game'

describe Game do

  let(:game_class) {Game}
  let(:game) {game_class.create(player)}
  let(:player) {double('Player 1', name: 'Marcus')}

  it 'Instantiates game with player' do
    expect(game.player_1.name).to eql 'Marcus'
  end

  it 'Stores an instance of game in a class variable' do
    expect(game_class.instance).to be_instance_of game_class
  end

end
