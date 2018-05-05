require 'rps'

describe Rps, :rps do
  let(:subject) { Rps.new('Sam') }

  it 'Returns the player name' do
    expect(subject.player).to eq 'Sam'
  end
end
