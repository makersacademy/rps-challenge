describe Judge do
  it 'decides who the winner is' do
    pick1 = 'rock'
    pick2 = 'scissors'
    expect(subject.decision(pick1, pick2)).to eq('rock')
  end
end
