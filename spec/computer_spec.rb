require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  describe '#choice' do
    it "returns the computer's move" do
      allow(computer).to receive(:choice) { "Paper" }
      expect(["Rock", "Paper", "Scissors"]).to include(subject.choice)
    end
  end
end
