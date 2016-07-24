require 'player'

describe Player do
	subject(:player) { described_class.new(name: "Sam") }
	let(:weapon) { :weapon }

	it "knows its name" do
		expect(player.name).to eq "Sam"
	end

	it "is called 'Computer' if no name is supplied" do
		expect(Player.new.name).to eq "Computer"
	end

	context '#choose_weapon' do

		it "can choose a specified weapon" do
			player.choose_weapon(weapon: weapon)
			expect(player.weapon.type).to eq weapon
		end
		it "chooses a random weapon if none supplied" do
			player.choose_weapon
			# allow(Kernel).to receive(:rand).and_return(0)
			expect(["Rock", "Paper", "Scissors", "Lizard", "Spock"]).to include player.weapon.type
		end
	end
end