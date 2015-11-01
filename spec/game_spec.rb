require 'Game'

describe Game do

  subject { described_class.new('radu') }

  it 'registers name of player' do
    expect(subject.player).to eq 'radu'
  end
end
