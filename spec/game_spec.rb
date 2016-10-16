require 'rps'

describe Rps do
  subject {described_class.new}

  context "#initialize" do
    it "with 'Rock'" do
    p  expect(subject.rock).to eq("Rock")
    end
    it "with 'Paper'" do
      expect(subject.paper).to eq("Paper")
    end
    it "with 'Scissors'" do
      expect(subject.scissors).to eq("Scissors")
    end
  end
  context "#random_cpu_attack" do
    it "picks randomly from rock,paper,scissors" do

      expect(subject.random).to eq("Rock") | eq("Paper") | eq("Scissors")
    end
  end
end
