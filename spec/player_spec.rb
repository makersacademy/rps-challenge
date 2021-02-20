require 'player'

describe Player do

  subject(:player) { Player.new('player') }

  it 'should return player_name' do
    expect(player.name).to eq('player')
  end

  it 'should return player_choice' do
    expect(player.choice = 'Rock').to eq('Rock')
  end

end
