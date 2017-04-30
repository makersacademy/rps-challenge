require_relative '../app'

describe SinglePlayer do
  let(:singleplayer) { described_class }
  it 'creates an instance of the game' do
    expect(SinglePlayer.create_game).to be_instance_of(described_class)
  end
  it 'returns the instance of the game' do
    test_single = SinglePlayer.create_game
    expect(SinglePlayer.instance).to be test_single
  end
end
