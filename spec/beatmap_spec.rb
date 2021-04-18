require 'beatmap'

describe Beatmap do
  subject(:beatmap) { described_class.new('rock') }
  let(:scissors) { double 'scissor', weapon: :scissors }

  it 'should store a weapon' do
    expect(beatmap.weapon).to eq :rock
  end
  
  it 'should return a winner' do
    expect(beatmap.win?(scissors)).to eq true
  end

  it 'should return a draw' do
    expect(beatmap.draw?(beatmap)).to eq true
  end
end