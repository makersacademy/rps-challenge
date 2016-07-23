require 'game'

describe Game do
  subject(:game) { described_class.new(player) }

  let(:player) { double('Player', :name => 'Mannie') }

  it 'creates an instance of self' do
    Game.create(player)
    expect(Game.instance).to be_kind_of(Game)
  end

  it 'player 1 can be passed to the game object' do
    expect(game.player_1.name).to eq 'Mannie'
  end

  it 'lets player select a hand' do
    expect{ game.player_1_selection('rock') }.to change{ game.selection }
  end
end
