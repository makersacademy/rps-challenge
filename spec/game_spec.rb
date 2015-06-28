require 'game'

describe Game do

  it 'must take two choices as an argument' do
    expect(subject). to respond_to(:game).with(2).argument
  end

  it 'must know that paper vs paper is a tie' do
    expect(subject.game "paper", "paper").to eq "CPU chooses paper - It's a tie!"
  end

  it 'must know that paper beats rock' do
    expect(subject.game "paper", "rock").to eq "CPU chooses rock - YOU WIN!"
  end

  it 'must know that paper loses to scissors' do
    expect(subject.game "paper", "scissors").to eq "CPU chooses scissors - YOU LOSE!"
  end

end
