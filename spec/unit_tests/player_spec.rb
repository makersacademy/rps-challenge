require 'player'

describe Player do 

  it 'can pick an object' do
    expect(subject).to respond_to :pick
  end

  it 'can pick rock' do
    subject.pick 'rock'
    expect(subject.picked).to eq 'rock'
  end

end
