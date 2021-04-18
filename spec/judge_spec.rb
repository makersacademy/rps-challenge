require 'judge'

describe Judge do
  it 'responds to #winner' do
    expect(subject).to respond_to(:winner)
  end

  it 'returns "neither" if given identical valid inputs' do
    expect(subject.winner("scissors","scissors")).to eq("neither")
    expect(subject.winner("paper","paper")).to eq("neither")
    expect(subject.winner("rock","rock")).to eq("neither")
  end

  it 'returns "player 1" if player 1 wins' do
    expect(subject.winner("scissors","paper")).to eq("player 1")
    expect(subject.winner("paper","rock")).to eq("player 1")
    expect(subject.winner("rock","scissors")).to eq("player 1")
  end

  it 'returns "player 2" if player 2 wins' do
    expect(subject.winner("scissors","rock")).to eq("player 2")
    expect(subject.winner("paper","scissors")).to eq("player 2")
    expect(subject.winner("rock","paper")).to eq("player 2")
  end

  it 'raises error if given invalid inputs' do
    expect { subject.winner('scissors','') }.to raise_error("invalid inputs!")
    expect { subject.winner('scisso','') }.to raise_error("invalid inputs!")
    expect { subject.winner('','paper') }.to raise_error("invalid inputs!")
    expect { subject.winner('','pape') }.to raise_error("invalid inputs!")
    expect { subject.winner(nil,nil) }.to raise_error("invalid inputs!")
    expect { subject.winner(' ',' ') }.to raise_error("invalid inputs!")
    expect { subject.winner('','') }.to raise_error("invalid inputs!")

  end

end
