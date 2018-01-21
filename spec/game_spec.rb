require './lib/game.rb'

describe Game do
  subject(:game) {described_class.new('Tiana', 'Computer') }
  it 'returns the game with a player and computer\'s names' do
    expect(game.player).to eq('Tiana')
    expect(game.computer).to eq('Computer')
  end

  
end
