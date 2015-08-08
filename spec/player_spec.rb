require 'player'

describe Player do
  let(:player_1) {Player.new 'diego'}
  let(:computer_player) {Player.new 'computer'}

  it 'creates a player with a name' do
    expect(player_1.name).to eq 'diego'
  end

  it 'identifies computer' do
    expect(computer_player.is_a_computer?).to be true
  end

end