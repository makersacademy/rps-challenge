require 'beatmap'

describe Beatmap do
  subject(:rock) { described_class.new('rock') }
  let(:scissors) { double 'scissor', weapon: :scissors }

  it 'should store a weapon' do
    expect(rock.weapon).to eq :rock
  end
  
  it 'should return a winner' do
    expect(rock.win?(scissors)).to eq true
  end

  it 'should return a draw' do
    expect(rock.draw?(rock)).to eq true
  end
end