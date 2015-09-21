# require 'cpu'
# describe Cpu do
#   let(:cpu) { described_class.new }
#
#   it 'can make a random selection' do
#     expect(cpu.cpu_choice).to be==(double :Scissors)
#   end
# end

require 'comp'

describe Comp do

  it "the game will choose a random option" do
    expect(subject.choice).to eq(:rock).or eq(:paper).or eq(:scissors)
  end

end
