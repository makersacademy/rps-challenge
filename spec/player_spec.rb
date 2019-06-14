require 'player'

describe Player do
  subject { described_class.new("Jamie") }

  it 'should have a name' do
    expect(subject.name).to eq('Jamie')
  end

  it 'should have a move' do
    expect(subject.user_move("Paper")).to eq('Paper')
  end

end
