require 'player'

describe Player do
  it 'should have a name attribute' do
    np = Player.new('A')
    expect(np.name).to eq 'A'
  end

  it 'should be able to make a choice between rock, paper or scissors' do
    allow(subject).to receive(:choice).and_return('rock')
    expect(subject.choice).to eq 'rock'
  end
end
