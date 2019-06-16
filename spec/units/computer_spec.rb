require 'computer'

describe Computer do
  subject(:computer) { Computer.new }   

  describe "#weapon" do
    it "returns a weapon" do  
      allow_any_instance_of(Computer).to receive(:random_weapon).and_return("Rock")    
      expect(computer.weapon).to eq("Rock")
    end
  end
end
