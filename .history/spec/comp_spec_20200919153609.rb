require 'comp'
describe Comp do
	it "can return a sample of a move" do
		expect(subject.move).to eq('rock').or eq('paper').or eq('scissors').or eq('lizard').or eq('spock')
	end 
end 