require 'player'

describe Player do

  subject(:player) {described_class.new("player1")}

  it 'should accept and set a player\'s choice' do
    player.set_choice(:rock)
    expect(player.choice).to eq :rock
  end

end
