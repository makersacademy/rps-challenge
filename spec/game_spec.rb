require 'Game'

describe Game do

  subject { described_class.new('radu') }

  it 'registers name of player' do
    expect(subject.player).to eq 'radu'
  end

  it 'computer chooses a random number' do
    srand(1)
    expect(subject.computer_move).to eq 'paper'
  end

end
