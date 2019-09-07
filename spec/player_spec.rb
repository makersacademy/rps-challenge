require './lib/player.rb'

describe Player do
  before(:each) do
    @player = Player.new('Dave')
  end
  it 'has a name' do
    expect(@player.name).to eq 'Dave'
  end
  it 'can set rps choice' do
    @player.rps_choice = 'Rock'
    expect(@player.rps_choice).to eq 'Rock'
  end
end
