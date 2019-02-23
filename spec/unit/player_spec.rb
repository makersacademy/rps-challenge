require './lib/player'

describe Player do

  let(:player) { Player.new('Ozzy Osbourne') }

  it 'knows its own name' do
    expect(player.name).to eq 'Ozzy Osbourne'
  end

  it 'knows what move it made' do
    player.set_move('ROCK')
    expect(player.move).to eq 'ROCK'
  end

end
