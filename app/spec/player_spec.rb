require 'player'

describe 'Player' do

  let(:player) {Player.new}

  it 'can be given a name' do
    player.set_name('Kirk')
    expect(player.name).to eq 'Kirk'
  end



end
