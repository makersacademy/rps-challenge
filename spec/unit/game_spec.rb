require './models/game.rb'

describe 'When new game is created with player name, ' do
  let(:player_name) { 'Simon' }

  # using before each instead of let to create game
  # as had issues with execution order
  before(:each) do
    @game = Game.create(player_name: player_name)
  end

  it 'should store player name' do
    expect(@game.player_name).to eq(player_name)
  end

  it 'should store new game instance as class instance variable' do
    expect(Game.current_game).to eq(@game)
  end
end