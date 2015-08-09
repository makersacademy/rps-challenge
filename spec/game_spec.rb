require 'game'

describe Game do
  let(:player_1) { double :player_1, play: nil }
  let(:player_2) { double :player_2, play: nil }

  it 'know if player lose the round' do
    subject = Game.new(Player)
    subject.player_1.play(:rock)
    subject.player_2.play(:paper)
    expect(subject.player_1_win?).to eq 'Player 2 win'
  end

  it 'know if player win the round' do
    subject = Game.new(Player)
    subject.player_1.play(:rock)
    subject.player_2.play(:scissor)
    expect(subject.player_1_win?).to eq 'Player 1 win'
  end

  it 'know if player draw the round' do
    subject = Game.new(Player)
    subject.player_1.play(:rock)
    subject.player_2.play(:rock)
    expect(subject.player_1_win?).to eq 'Draw'
  end
end