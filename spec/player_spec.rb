require 'player'

describe Player do

  subject { Player.new("Mel") }

  it 'should return a name' do
    expect(subject.name).to eq("Mel")
  end

  it 'should return a move' do
    expect(subject.move('rock')).to eq('rock')
  end

end
