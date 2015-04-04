require 'cpu'

describe CPU do
  it 'can make a hand' do
    expect(subject.make_hand).to eq 'rock' || 'paper' || 'scissors'
  end
end
