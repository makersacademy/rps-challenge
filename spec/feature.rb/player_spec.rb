require 'player'

describe Player do
  it 'be able to choose rock' do
    player = Player.new
    subject.choice 'rock'
    expect(subject.shape).to eq 'rock'
  end

  it 'be able to choose paper' do
    player = Player.new
    subject.choice 'paper'
    expect(subject.shape).to eq 'paper'
end

  it 'be able to choose scissors' do
    player = Player.new
    subject.choice 'scissors'
    expect(subject.shape).to eq 'scissors'
  end
end