require "player"

describe Player do
  let(:subject) {described_class.new("James")}
  describe ".initialize" do
    it "should initialize with a name instance variable" do
      expect(subject.name).to eq('James')
    end
  end
end