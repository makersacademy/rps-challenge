require './lib/game.rb'

describe Game do
  subject(:game) {described_class.new('Tiana', 'Computer') }
  it 'returns the game with a player and computer\'s names' do
    expect(game.player).to eq('Tiana')
    expect(game.computer).to eq('Computer')
  end

  it 'respond to method moves' do
    expect(game).to respond_to(:moves).with(2).arguments
  end

end
