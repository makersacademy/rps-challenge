require 'player'

describe Player do
  let(:player){ Player.new('Alexis') }

  it 'displays player game status' do
    expect(player.victory_count).to eq('Wins: 0, Losses: 0, Ties: 0')
  end

  it 'adds one to victories when won' do
    player.win
    expect(player.victories).to eq(1)
  end

  it 'adds one to losses when lost' do
    player.lose
    expect(player.losses).to eq(1)
  end

  it 'adds one tie when tied' do
    player.tie
    expect(player.ties).to eq(1)
  end
end