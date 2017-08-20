require "computer"

describe Computer do
  context "#choice" do
    it "chooses rock, paper or sissors randomly" do
      expect(subject.choice).to eq("Rock").or eq("Paper").or eq("Sissors")
    end
  end
end
