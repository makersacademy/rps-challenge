require_relative '../lib/player'

describe Player do
  subject = Player.new 'examplename'

  it 'should be initialized with a name' do
    expect(subject.name).to eq 'examplename'
  end

  it 'should throw an error if the move entered is not valid' do
    expect { subject.make_move('potato') }.to raise_error 'Invalid move'
  end

  it 'should return the move when the move is valid' do
    expect(subject.make_move('Rock')).to eq 'Rock'
  end

  it 'should generate a random move' do
    allow(subject.moves).to receive(:sample) { 'Rock' }
    expect(subject.random_move).to eq 'Rock'
  end
end