require 'game'

describe Game do

  subject { described_class.new(player) }

  let(:player) { double :player }

  it 'returns rock, paper or scissors' do
    expect(subject.choice).to eq('Rock').or eq('Paper').or eq('Scissors')
  end

end
