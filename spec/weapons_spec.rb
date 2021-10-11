require "weapons"

describe Weapons do
  let(:subject) {described_class.new('rock', ["paper", "spock"])}

  describe '.initialize' do
    it "should initialize with a name instance variable" do
      expect(subject.name).to eq('rock')
    end
    it "should initialize with list of predators" do
      expect(subject.predators).to eq(["paper", "spock"])
    end
  end
end