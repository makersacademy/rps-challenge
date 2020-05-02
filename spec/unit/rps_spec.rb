require "./lib/rps"

describe Rps do
  
  describe "#random_output" do
    it "returns a random output of Rock Paper Scissors" do 
      expect(subject).to respond_to(:random_output)
    end 

    it "generates Rock if rand 1 called" do 
      testing = Rps.new
      
      allow(testing).to receive(:rand).and_return(1)

      expect(testing.random_output).to eq("Rock")
    end 

    it "generates Paper if rand 2 called" do 
      testing = Rps.new
      
      allow(testing).to receive(:rand).and_return(2)

      expect(testing.random_output).to eq("Paper")
    end 

    it "generates Scissors if rand 3 called" do 
      testing = Rps.new
      
      allow(testing).to receive(:rand).and_return(3)

      expect(testing.random_output).to eq("Scissors")
    end 
  end 
end 
