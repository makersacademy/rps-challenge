require 'player'

describe Player do

  subject(:cam) { Player.new('Cam') }
  
  it 'returns the name of the player' do
    expect(cam.name).to eq('Cam')
  end

end