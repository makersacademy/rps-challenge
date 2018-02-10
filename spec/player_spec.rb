require 'player'

describe Player do

  subject(:player) {Player.new('Marcus')}

  it 'insantiates player with a name' do
    expect(player.name).to eql('Marcus')
  end

end
