require 'player'

RSpec.describe Player do

  subject { described_class.new("Billy") }

  it 'should have a name' do
    expect(subject.name).to eq "Billy"
  end

  it 'should be able to choose a move' do
    subject.choose_move("Rock")
    expect(subject.move).to eq "Rock"
  end
end
