require 'cpu.rb'

describe Cpu do

  subject(:cpu) { described_class.new }

  it "has a random choice" do
    allow(cpu).to receive(:choice).and_return(:rock)
    expect(cpu.choice).to eq :rock
  end
  it "can select rock, paper, or scissors" do
    expect(memory).to include(:rock, :paper, :scissors)
  end
  it "can't select anything else" do
    expect(memory).not_to include(:stick)
  end

  def memory
    memory = []
    100.times { memory << cpu.choice }
    memory
  end

end
