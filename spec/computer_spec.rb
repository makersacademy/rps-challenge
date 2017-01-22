require 'computer'

describe Computer do
    subject(:computer) { described_class.new }
    
    it "can make a choice" do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        expect(computer.choice).to eq :rock
    end
end