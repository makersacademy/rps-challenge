require "player"

describe Player do
  let(:subject) {described_class.new("James")}
  describe ".initialize" do
    it "should initialize with a name instance variable" do
      expect(subject.name).to eq('James')
    end
  end
  describe ".add_choice" do
    it "should create and add value to move instance variable" do
      subject.add_choice('rock')
      expect(subject.move).to eq('rock')
    end
  end
end