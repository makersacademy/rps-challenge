require 'cpu.rb'

describe Cpu do
  describe "#roll_attack" do
    it "randomly selects a move" do
      expect(subject.roll_attack).to eq(:rock).or(eq(:paper)).or(eq(:scissors))
    end
  end
end
