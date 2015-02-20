require 'player'

describe 'Player' do

  let(:player) {Player.new}

  it 'can be given a name' do
    player.set_name('Kirk')
    expect(player.name).to eq 'Kirk'
  end

  it 'has a weapon choice' do
    expect(player.weapon).to eq :no_weapon
  end

  it 'can choose a weapon' do
    player.choose(:ROCK)
    expect(player.weapon).to eq :ROCK
  end


end
