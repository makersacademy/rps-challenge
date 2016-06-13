require "computer"

describe Computer do
  subject { described_class.new }
  describe "#make_choice" do
    it "should only be rock, paper or scissors" do
      subject.make_choice
      expect([:rock, :paper, :scissors]).to include(subject.choice)
    end
  end
end
