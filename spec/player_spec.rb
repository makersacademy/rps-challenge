require 'player'

describe Player do
  it 'can select p,r, or s to play' do
    expect(subject.selects 'p').to eq 'p'
  end

  it 'cannot play hand that is not p,r, or s' do
    expect { subject.selects('a') }.to raise_error
    "Use 'p', 'r', 's' to play hand"
  end
end
