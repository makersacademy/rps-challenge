require 'cpu.rb'

describe Cpu do
  options = Config::OPTIONS
  subject(:cpu) { described_class.new }
  let(:regular) { double(:config, options: options[0..2]) }
  let(:hard) { double(:config, options: options[0..4]) }
  context "Regular" do
  
    it "can select rock, paper, or scissors" do
      expect(memory1).to include :rock, :paper, :scissors
    end
    it "can't select anything else" do
      expect(memory1).not_to include(:stick)
    end
  
  end
  context "Hard" do
  
    it "can also select lizard or spock" do
      expect(memory2).to include :lizard, :spock
    end
    it "can't select anything else" do
      expect(memory2).not_to include(:stick)
    end
  end

end
