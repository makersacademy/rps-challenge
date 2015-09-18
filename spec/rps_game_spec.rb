require 'rps_game'

describe RPSGame do
  it 'declares a tie when computer and player choose rock' do
    allow(subject).to receive(:computer) {"rock"}
    expect(subject.play "rock").to eq "It is a Tie!"
  end

  it 'declares player winner when they choose scissors against paper' do
    allow(subject).to receive(:computer) {"paper"}
    expect(subject.play "scissors").to eq "Congratulations You have Won!"
  end

  it 'declares player loser when they choose scissors against rock' do
    allow(subject).to receive(:computer) {"rock"}
    expect(subject.play "scissors").to eq "I am sorry You have Lost!"
    end  
end
