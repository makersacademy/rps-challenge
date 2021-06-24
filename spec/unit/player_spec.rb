require 'player'

describe Player do
  let(:player) { Player.new('Jenny', 'Paper') }

  it 'can submit name' do
    expect(player.player_name).to eq 'Jenny'
  end

  it 'can choose : Rock, Paper, Scissors' do
    expect(player.choice).to eq 'Paper'
  end
end
