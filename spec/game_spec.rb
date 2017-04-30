require_relative '../app.rb'

describe Game do
  let(:game) { described_class.new('Will') }

  it 'initializes new game objects with players stored in attributes' do
    expect(game.player1.name).to eq 'Will'
  end

  it 'self-initializes with a class method taking player names as parameters' do
    described_class.start_game('Will')
    expect(described_class.instance.player1.name).to eq 'Will'
  end

  it 'self-initializes with Player 2 as \'Computer\' when no name given' do
    described_class.start_game('Will')
    expect(described_class.instance.player2.name).to eq 'Computer'
  end

  it 'stores a game object that can be revealed through a class method' do
    described_class.start_game('Will')

  end
end
