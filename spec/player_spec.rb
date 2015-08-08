require_relative '../lib/player'

describe Player do
  subject = Player.new 'examplename'

  it 'should be initialized with a name' do
    expect(subject.name).to eq 'examplename'
  end

  # it 'should throw an error if the move entered is not valid' do
  #   expect { subject.make_move('hello') }.to raise_error 'Invalid move'
  # end

  it 'should be able to make a move' do
    expect(subject.make_move(:rock)).to eq :rock
  end

  # it 'should generate a random move' do
  #   allow(subject.moves).to receive(:sample) { :rock }
  #   expect(subject.random_move).to eq :rock
  # end
end