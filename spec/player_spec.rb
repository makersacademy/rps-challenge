# This is the spec file for player class
require './lib/player'

describe Player do
  subject(:dave) { Player.new('Dave') }

  it 'creates a player called Dave' do
    expect(dave.name).to eq 'Dave'
  end
end
