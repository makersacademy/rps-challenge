require './models/player.rb'

describe Player do
  subject(:player_1) { Player.new('James') }
  it 'initializes with a name' do
    expect(player_1.name).to eq 'James'
  end
end