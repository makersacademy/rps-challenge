require 'computer'

describe Computer do 
  context "returns Rock, Paper, Scissor as an option for the computer" do 
    it "it returns rock" do 
      comp = Computer.new(["Rock", "Paper", "Scissors"])
      allow(comp).to receive(:option).and_return("Rock")
      expect(comp.option).to eq "Rock"
    end 

    it "it returns paper" do 
      comp = Computer.new(["Rock", "Paper", "Scissors"])
      allow(comp).to receive(:option).and_return("Paper")
      expect(comp.option).to eq "Paper"
    end 

    it "it returns scissors" do 
      comp = Computer.new(["Rock", "Paper", "Scissors"])
      allow(comp).to receive(:option).and_return("Scissors")
      expect(comp.option).to eq "Scissors"
    end
  end
end 
