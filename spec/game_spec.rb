require 'game'

describe Game do
  let(:game) { double :game }
  it 'game produces random option' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    expect(subject.random).to eq 'Paper'
  end

  it 'checks players score' do
    player = Game.new
    player.player_score
    expect(player.player_score).to eq 'Rock'
  end

  

end
