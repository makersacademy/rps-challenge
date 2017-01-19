require 'calculations.rb'

describe Calculations do
  let(:calculations) {described_class.new(player_choice,computer_choice)}




   context "When initialized it" do
     it "should take two arguments" do
       expect(Calculations).to receive(:new).with(instance_of(Symbol),instance_of(Symbol) )
       Calculations.new(:hi, :bye)
     end
   end


   context "When using class method create, it" do
     let(:computer_choice) {double(:computer_choice)}
     let(:player_choice)   {double(:player_choice)}

     before do
       @current_calculation = Calculations.create(player_choice,computer_choice)
     end

     it "should create an instance of the class" do
       expect(@current_calculation.class).to eq Calculations
     end

  
   end


 end
