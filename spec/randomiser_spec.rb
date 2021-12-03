require 'randomiser'

describe Randomiser do
  let(:subject) { described_class.new }
  
  describe "#call" do
    it "can return rock when generating a random choice" do
      allow(subject).to receive(:call).and_return("Rock")
    end
  end
end