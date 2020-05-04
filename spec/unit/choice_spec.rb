require './lib/choice'

describe Choice do

  describe "#random_output" do 

    it "generates Rock if rand 1 called" do
      srand(2) 
      expect(subject.random_choose).to eq("Rock")
    end 

    it "generates Paper if rand 2 called" do
      srand(1) 
      expect(subject.random_choose).to eq("Paper")
    end 

    it "generates Scissors if rand 3 called" do 
      srand(3)
      expect(subject.random_choose).to eq("Scissors")
    end 

  end 
end 