require 'game'

describe Game do
  let(:game) { Game.new('Andy', 'Sheldon') }

  it 'should have two players on start' do
    expect(game.players.length).to eq 2 
  end

  it 'should have a list of weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors] 
  end

end
