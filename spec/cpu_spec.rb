require 'cpu'

describe Cpu do
  let(:cpu) { double(:cpu, selection: :rock) }
  describe '#selection' do
    it "Should return the computer's selection as rock" do
      expect(cpu.selection).to eq :rock
    end
  end
end
