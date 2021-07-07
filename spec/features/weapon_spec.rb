require '/Users/michaelnguyen/Makers/rps-challenge/app_computer.rb'
RSpec.describe Computer do 

  context "#computer" do
    it "responds to method weapon" do 
      computer = Computer.new
      expect(computer).to respond_to(:weapon)
    end 
  end 
  
end 