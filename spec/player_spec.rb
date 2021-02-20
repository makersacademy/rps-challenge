require 'player'

describe Player do

  let(:subject) { Player.new("Pete") }
  
  it 'should have a name' do
    expect(subject.name).to eq "Pete"
  end

  it 'should have an initial score of 0' do
    expect(subject.score).to eq 0
  end

  it 'should be able to increment the score' do
    expect { subject.won }.to change { subject.score }.by 1
  end

end
