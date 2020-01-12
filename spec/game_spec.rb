require_relative '../app.rb'

describe Game do
  let(:game) { described_class.new('Jake') }

  it 'initializes new game objects with players' do
    expect(game.player1.name).to eq 'Jake'
  end

  it 'initialize method using player names as parameters' do
    described_class.start_game('Jake')
    expect(described_class.instance.player1.name).to eq 'Jake'
  end

  it 'initializes with a Computer when no name parameter' do
    described_class.start_game('Jake')
    expect(described_class.instance.player2.name).to eq 'Computer'
  end

  it 'game object accessed via method' do
    described_class.start_game('Jake')

  end
end
