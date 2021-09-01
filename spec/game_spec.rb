require 'game'

describe Game do
  let(:game) { double :game }

  it 'checks players score' do
    player = Game.new
    player.player_score
    expect(player.player_score).to eq "Rock"
  end

  it 'returns paper win result' do
    player = Game.new
    player.player_score
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    expect(player.result1).to eq "You won!"
  end
end
