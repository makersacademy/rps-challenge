require 'player'

describe Player do
  let(:player_1) {double ('Marketeer')}
  subject(:player) {described_class.new(player_1)}

  it 'has a player' do
    expect(player.name).to eq player_1
  end

  it 'has a choice' do
    choice = 1
    player.players_choice(choice)
    expect(player.choice).to eq choice
  end

  it 'has a score' do
    expect(player).to respond_to(:score)
  end

  it 'score is 0 by default' do
    expect(player.score).to eq 0
  end
end
