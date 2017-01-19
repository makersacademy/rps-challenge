require './lib/computer.rb'

describe Computer do

  subject(:computer) {described_class.new}

    # context "#initializing" do
    #   it "should hold a choice which is empty at first" do
    #     expect(computer.choice).to eq nil
    #   end
    # end

    context "Random choice" do
      it "should choose an option from array randomly" do
        computer.random_select
        expect(computer.choice).to eq("Rock").or(eq("Paper")).or(eq("Scissors"))
      end
    end
end
