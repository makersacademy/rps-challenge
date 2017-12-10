require 'rspec'
require './lib/game.rb'
require './lib/player.rb'

describe Player do
  let(:player1) { Player.new('Player1') }
  let(:player2) { Player.new('Player2') }

  it 'should should initialize a player with name' do
    expect(player1.name).to eq('Player1')
  end
end