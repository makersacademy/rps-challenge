require 'beatmap'

describe Beatmap do
  subject(:beatmap) { described_class.new }

  it 'should return a winner' do
    expect(beatmap.win?(:rock, :scissors)).to eq true
  end

  it 'should return a draw' do
    expect(beatmap.draw?(:rock, :rock)).to eq true
  end
end
