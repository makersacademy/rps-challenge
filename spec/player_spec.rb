require 'rspec'
require './lib/game.rb'
require './lib/player.rb'

describe Player do
  let(:player) { Player.new('Player1') }

  it 'should initialize a player with name' do
    expect(player.name).to eq('Player1')
  end

  it 'should store player choice from param' do
    allow(player).to receive(:choice).and_return('Rock')
    expect(player.choice).to eq('Rock')
  end
end