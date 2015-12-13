require "computer"


describe Computer do
	subject(:computer){described_class.new}

	before do
	allow_any_instance_of(Array).to receive(:sample).and_return(:'crocodile')
	end
	
	describe "#comp_choose" do
		it "randomly chooses an weapon" do
			computer.comp_choose
			expect(computer.comp_choice).to eq :'crocodile'
		end
	end
	

end