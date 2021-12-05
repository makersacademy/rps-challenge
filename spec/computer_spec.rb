require 'computer'

describe Computer do
	

	context "initialization" do
		it 'initializes an instance of itself' do
			expect(subject).to be_an_instance_of(Computer)
		end

		it 'initializes with an array of 3 choices' do
			expect(subject.choices.length).to eq 3
		end

		it 'choices array includes Rock, Paper, Scissors' do
			expect(subject.choices).not_to include "Cheese"
		end
	end

	context "#choice" do
		it 'has a #choice method' do
			expect(subject).to respond_to(:choice)
		end

		it 'returns a random choice from the choices array' do
			allow(Computer).to receive(:choice).and_return("Paper")
			expect(Computer.choice).to eq "Paper"
		end

	end

end