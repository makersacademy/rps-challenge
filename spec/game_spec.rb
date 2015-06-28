require 'game'

describe Game do

  it 'must take two choices as an argument' do
    expect(subject). to respond_to(:play).with(2).argument
  end

  it 'must know that paper vs paper is a tie' do
    expect(subject.play "Paper", "Paper").to eq "CPU chooses Paper - It's a tie!"
  end

  it 'must know that paper beats rock' do
    expect(subject.play "Paper", "Rock").to eq "CPU chooses Rock - YOU WIN!"
  end

  it 'must know that paper loses to scissors' do
    expect(subject.play "Paper", "Scissors").to eq "CPU chooses Scissors - YOU LOSE!"
  end

end
