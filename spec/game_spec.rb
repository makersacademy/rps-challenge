require './lib/game_engine'

describe GameEngine do
  it 'returns the winner of a game' do
    expect(subject).to be_an_instance_of(GameEngine)

  end
end