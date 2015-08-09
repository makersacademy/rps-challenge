require 'player'

describe Player do
  it 'allows players to play' do
    subject = Player.new
    subject.play :paper
    expect(subject.last_played).to eq 2
  end

  it 'records last_played' do
    subject = Player.new
    subject.play :paper
    subject.play :rock
    expect(subject.played).to eq [:paper, :rock]
  end

  it 'only allows rock paper scissors' do
    subject = Player.new
    expect(subject.play :boat).to eq 'Please pick rock, paper or scissor'
  end
end