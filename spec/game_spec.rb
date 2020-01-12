require './lib/game_engine'

describe GameEngine do
  it 'returns an instance of itself' do
    expect(subject).to be_an_instance_of(GameEngine)

  end
end